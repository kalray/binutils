#include "as.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <stdarg.h>
#include <elf/kvx_elfids.h>
#include "kvx-parse.h"

/* This is bad! */
struct node_list_s {
  struct node_s *node;
  struct node_list_s *nxt;
};

struct node_s {
  char *val;
  int len;
  struct node_list_s *succs;
  int nb_succs;
};

#define TOKEN_NAME(tok) ((tok) == -1 ? "unknown token" : env.tokens_names[(tok) - 1])


/* Trie */

static
struct node_list_s *
insert_in_succ_list (struct node_s *node, struct node_s *base)
{
  struct node_list_s *new_hd = NULL;
  if (!(new_hd = calloc (1, sizeof (*new_hd))))
    return NULL;

  new_hd->node = node;
  new_hd->nxt = base->succs;
  base->nb_succs += 1;
  return new_hd;
}

static
struct node_s *
make_node (const char *str, int len)
{
  struct node_s *n = NULL;
  if (!(n = calloc (1, sizeof (*n))))
    goto err;

  n->len = len;
  n->succs = NULL;
  if (!(n->val = calloc (n->len + 1, sizeof (*n->val))))
    goto err1;

  strncpy (n->val, str, n->len);
  return n;

err1:
  free (n), n = NULL;
err:
  return NULL;
}

static
struct node_s *
insert (const char *str, struct node_s *node)
{
  int i = 0;
  int len = strlen (str);

  if (!node)
    {
      struct node_s *n = make_node (str, len);
      n->succs = insert_in_succ_list (NULL, n);
      return n;
    }

  while (i < len && i < node->len && str[i] == node->val[i])
    ++i;

  /* The strings share a prefix. */
  if (i < len && i < node->len)
    {
      /* Split the current node on that common prefix. */

      /* Create a new node with only the unshared suffix, and makes it inherit
         the successor of the node under consideration. */
      struct node_s *suf = make_node (node->val + i, node->len - i);
      suf->succs = node->succs;
      suf->nb_succs = node->nb_succs;
      /* Insert the remainder on the other branch */
      struct node_s *rem = make_node (str + i, len - i);
      rem->succs = insert_in_succ_list (NULL, rem);

      node->val[i] = '\0';
      node->len = i;
      node->succs = NULL;
      node->nb_succs = 0;
      node->succs = insert_in_succ_list (suf, node);
      node->succs = insert_in_succ_list (rem, node);
      return node;
    }

  /* str is a strict prefix of node->val */
  if (i == len && i < node->len)
    {
      /* Split the current node at position */
      struct node_s *suf = make_node (node->val + i, node->len - i);
      suf->succs = node->succs;
      suf->nb_succs = node->nb_succs;
      node->val[i] = '\0';
      node->len = i;
      /* Insert an empty leaf */
      node->succs = NULL;
      node->nb_succs = 0;
      node->succs = insert_in_succ_list (NULL, node);
      node->succs = insert_in_succ_list (suf, node);
      return node;
    }

  /* node->val is a prefix of str */
  if (i == node->len)
    {
      /* Find a successor of node into which the remainder can be inserted. */
      struct node_list_s *cur_succ = node->succs;
      while (cur_succ)
	{
	  struct node_s *n = cur_succ->node;
	  if (n && n->val && n->val[0] == str[i])
	    {
	      cur_succ->node = insert (str + i, cur_succ->node);
	      break;
	    }
	  cur_succ = cur_succ->nxt;
	}
      /* No successor shares a common prefix */
      if (cur_succ == NULL)
	{
	  struct node_s *suf = make_node (str + i, len - i);
	  suf->succs = insert_in_succ_list (NULL, suf);
	  node->succs = insert_in_succ_list (suf, node);
	}
      return node;
    }

  return node;
}

static
void
free_node (struct node_s *node)
{
  if (!node)
    return;

  free (node->val);

  struct node_list_s *cur_succ = node->succs;
  struct node_list_s *tmp = NULL;
  while ((tmp = cur_succ))
  {
    struct node_s *n = cur_succ->node;
    if (n)
      free_node (n), n = NULL;
    cur_succ = cur_succ->nxt;
    free (tmp);
  }

  free (node);
}

#define max(a,b) (((a)>(b))?(a):(b))
static
int
longest_match (const char *str, int len, struct node_s *node)
{
  int i = 0;
  int last_mark = 0;
  struct node_s *cur = node;

  while (1)
    {
      if (i + cur->len > len
	  || strncmp (str + i, cur->val, max(0, cur->len)))
	return last_mark;

      i += cur->len;
      struct node_list_s *cur_succ = cur->succs;
      cur = NULL;
      while (cur_succ)
	{
	  struct node_s *n = cur_succ->node;
	  if (!n)
	    last_mark = i;
	  else if (n->val[0] == str[i])
	    cur = n;
	  cur_succ = cur_succ->nxt;
	}
      if (!cur)
	return last_mark;
    }
}

__attribute__((unused))
static void
dump_graph_1 (FILE *fd, struct node_s *node, int id)
{
  struct node_list_s *cur_succ = node->succs;
  int i = 0;

  if (id == 1)
    fprintf (fd, "\t%d [label=\"%s\"];\n", id, node->val);

  while (cur_succ)
    {
      if (cur_succ->node == NULL)
	fprintf (fd, "\t%d -> \"()\";\n", id);
      else
	{
	  fprintf (fd, "\t%d [label=\"%s\"];\n",
		   node->nb_succs * id + i, cur_succ->node->val);
	  fprintf (fd, "\t%d -> %d;\n", id, node->nb_succs * id + i);
	  dump_graph_1 (fd, cur_succ->node, node->nb_succs * id + i);
	}
      i += 1;
      cur_succ = cur_succ->nxt;
    }
}

__attribute__((unused))
static void
dump_graph (char *name, char *path, struct node_s *node)
{
  FILE *fd = fopen (path, "w");
  fprintf (fd, "digraph %s {\n", name);

  dump_graph_1 (fd, node, 1);

  fprintf (fd, "}\n");
  fclose (fd);
}

__attribute__((unused))
static void
print_n (const char *str, int n)
{
  for (int i = 0 ; i < n ; ++i)
    putchar (str[i]);
  putchar('\n');
}


int debug_level = 0;

__attribute__((unused))
static int
printf_debug (int lvl, const char *fmt, ...)
{
  int ret = 0;
  if (debug_level >= lvl)
    {
      va_list args;
      va_start (args, fmt);
      ret = vprintf (fmt, args);
      va_end (args);
    }

  return ret;
}

static int
is_delim (char c)
{
  char delims[] = { '[', ']', '?', ',', '=' };
  int nb_delims = sizeof (delims) / (sizeof (*delims));
  for (int i = 0; i < nb_delims; ++i)
    if (c == delims[i])
      return 1;
  return 0;
}

#define TOKEN_STR(token) \
__extension__({ \
char __buf_##token[256] = { 0 }; \
print_token(token, __buf_##token, 256), __buf_##token; \
})

__attribute__((unused))
static void
print_token (struct token_s token, char *buf, int bufsz)
{
  for (int i = 0; i < token.end - token.begin && i < bufsz; ++i)
    buf[i] = token.insn[token.begin + i];
  for (int i = token.end - token.begin ; i < bufsz; ++i)
    buf[i] = 0;
}

static int
promote_token (struct token_s tok)
{
  int cur_class = tok.class_id & -tok.class_id;
  switch (tok.category)
    {
      case CAT_REGISTER:
      case CAT_MODIFIER:
	return (cur_class != tok.class_id)
	  ? tok.class_id ^ cur_class
	  : tok.class_id;
      case CAT_IMMEDIATE:
	return env.promote_immediate (tok.class_id);
      default:
	return tok.class_id;
    }
}

static int
is_insn (const struct token_s *token, struct token_class *classes)
{
  int res = false;
  int i = 0;
  int tok_sz = token->end - token->begin;
  char *tok = token->insn + token->begin;
  while (!res && classes[i].class_values != NULL)
    {
      res = !strncmp (classes[i].class_values[0], tok, tok_sz);
      i += 1;
    }

  return res;
}

static int
get_token_class (struct token_s *token, struct token_classes *classes, int insn_p, int modifier_p)
{
  int cur = 0;
  int found = 0;
  int tok_sz = token->end - token->begin;
  char *tok = token->insn + token->begin;

  token->val = -1;

  struct token_class *class;
  if (tok[0] == '$')
    {
      class = classes->reg_classes;
      token->category = CAT_REGISTER;
    }
  else if (modifier_p && tok[0] == '.')
    {
      class = classes->mod_classes;
      token->category = CAT_MODIFIER;
    }
  else if (isdigit (tok[0]) || tok[0] == '+' || tok[0] == '-')
    {
      class = classes->imm_classes;
      token->category = CAT_IMMEDIATE;
    }
  else if (tok_sz == 1 && is_delim (tok[0]))
    {
      class = classes->sep_classes;
      token->category = CAT_SEPARATOR;
    }
  else if (insn_p && is_insn (token, classes->insn_classes))
    {
      class = classes->insn_classes;
      token->category = CAT_INSTRUCTION;
    }
  else
    {
      class = classes->imm_classes; /* symbol */
      token->category = CAT_IMMEDIATE;
    }

  if (class == classes->imm_classes)
    {
      unsigned val = (strtoul (tok + (tok[0] == '-') + (tok[0] == '+'), NULL, 0));
      int len = 8 * sizeof (val) - __builtin_clzl (val) + (tok[0] == '-');
      for (; class[cur].class_id != -1 && class[cur].sz < len; ++cur)
	;
      token->val = (tok[0] == '-' ? -1 : 1) * val;
      found = 1;
    }
  else
    {
      do
	{
	  for (int i = 0; !found && i < class[cur].sz; ++i)
	    {
	      const char *ref = class[cur].class_values[i];
	      found = ((long) strlen (ref) == tok_sz) && !strncmp (tok, ref, tok_sz);
	      token->val = i;
	    }

	  cur += !(found);
	}
      while (!found && class[cur].class_id != -1);
    }

  if (!found)
    {
      token->category = CAT_IMMEDIATE;
      return token->class_id = classes->imm_classes[0].class_id;
    }

#define unset(w, rg) ((w) & (~(1 << ((rg) - env.fst_reg))))
  if (class == classes->reg_classes && !env.allow_all_sfr)
    return token->class_id = unset (class[cur].class_id, env.sys_reg);
#undef unset

  return token->class_id = class[cur].class_id;
}

static int
read_token (struct token_s *tok)
{
  int insn_p = tok->begin == 0;
  int modifier_p = 0;
  char *str = tok->insn;
  int *begin = &tok->begin;
  int *end = &tok->end;

  // Eat up all leading spaces.
  while (str[*begin] && (str[*begin] == ' ' || str[*begin] == '\n'))
    *begin += 1;

  *end = *begin;

  if (!str[*begin])
    return 0;

  /* Special case, we're reading an instruction. Try to read as much as possible
     as long as the prefix is a valid instruction.  */
  if (insn_p)
    *end += longest_match (str + *begin, strlen (str + *begin), env.insns);
  else
    {
      if (is_delim (str[*begin]))
      {
	*end += 1;
	get_token_class (tok, env.token_classes, insn_p, modifier_p);
	return 1;
      }

      if (str[*begin] == '.' && !(*begin > 0 && (str[*begin - 1] == ' ' || is_delim(str[*begin - 1]))))
	modifier_p = 1;

      /* This is a modifier or a register */
      if (str[*begin] == '.' || str[*begin] == '$')
	*end += 1;

      /* Stop when reaching the start of the new token. */
      while (!(!str[*end] || is_delim (str[*end]) || str[*end] == ' ' || (modifier_p && str[*end] == '.')))
	*end += 1;

    }
  get_token_class (tok, env.token_classes, insn_p, modifier_p);
  return 1;
}

/* Rewrite with as_bad. */
static void
rule_expect_error (int rule_id, char *buf, int bufsz __attribute__((unused)))
{
  int i = 0;
  int pos = 0;
  int comma = 0;
  pos += sprintf (buf + pos, "error: expected one of [");
  struct steering_rule *rules = env.rules[rule_id].rules;
  while (rules[i].steering != -1)
    {
      if ((env.allow_all_sfr || rules[i].steering != env.sys_reg)
	  && rules[i].steering != -3)
	{
	  pos += sprintf (buf + pos, "%s%s", comma ? ", " : "", TOKEN_NAME (rules[i].steering));
	  comma = 1;
	}
      i += 1;
    }
  pos += sprintf (buf + pos, "].");
}

struct token_list
{
  char *tok;
  int val;
  int class_id;
  int loc;
  struct token_list *next;
  int len;
};

static struct token_list *
create_token (struct token_s tok, int len, int loc)
{
  struct token_list *tl = calloc (1, sizeof *tl);
  int tok_sz = tok.end - tok.begin;
  tl->tok = calloc (tok_sz + 1, sizeof (char));
  memcpy (tl->tok, tok.insn + tok.begin, tok_sz * sizeof (char));
  tl->val = tok.val;
  tl->class_id = tok.class_id;
  tl->next = NULL;
  tl->len = len;
  tl->loc = loc;
  return tl;
}

static void
print_token_list (struct token_list *lst)
{
  struct token_list *cur = lst;
  while (cur)
    {
      printf_debug (1, "%s (%d : %s : %d) / ",
	      cur->tok, cur->val, TOKEN_NAME (cur->class_id), cur->loc);
      cur = cur->next;
    }
  printf_debug (1, "\n");
}

void
free_token_list (struct token_list *tok_list)
{
  struct token_list *cur = tok_list;
  struct token_list *tmp;
  while (cur)
    {
      tmp = cur->next;
      free (cur->tok);
      free (cur);
      cur = tmp;
    }
}

static struct token_list *
token_list_append (struct token_list *lst1, struct token_list *lst2)
{
  if (lst1 == NULL)
    return lst2;

  if (lst2 == NULL)
    return NULL;

  struct token_list *hd = lst1;
  while (hd->next)
    {
      hd->len += lst2->len;
      hd = hd->next;
    }

  hd->len += lst2->len;
  hd->next = lst2;
  return lst1;
}

struct error_list
{
  int loc, rule;
  struct error_list *nxt;
};

static struct error_list *
error_list_insert (int rule, int loc, struct error_list *nxt)
{
  struct error_list *n = calloc (1, sizeof (*n));
  n->loc = loc > 0 ? loc - 1 : loc;
  n->rule = rule;
  n->nxt = nxt;
  return n;
}

static void
free_error_list (struct error_list *l)
{
  struct error_list *tmp, *cur_err = l;
  while ((tmp = cur_err))
  {
    cur_err = cur_err->nxt;
    free (tmp);
  }
}

static int
CLASS_ID (struct token_s tok)
{
  int offset = __builtin_ctz (tok.class_id & -tok.class_id);
  switch (tok.category)
  {
    case CAT_REGISTER:
      return env.fst_reg + offset;
    case CAT_MODIFIER:
      return env.fst_mod + offset;
    default:
      return tok.class_id;
  }
}

struct parser {

};

static struct token_list *
parse_with_restarts (struct token_s tok, int jump_target, struct rule rules[],
		     struct error_list **errs)
{
  int end_of_line = 0;
  struct steering_rule *cur_rule = rules[jump_target].rules;

  if (!tok.insn[tok.begin])
    tok.class_id = -3;

  if (CLASS_ID (tok) == -1)
    {
      /* Unknown token */
      *errs = error_list_insert (jump_target, tok.begin, *errs);
      return NULL;
    }

  printf_debug (1, "\nEntering rule: %d (Trying to match: %s (%s)[%d])\n", jump_target,
		TOKEN_NAME (CLASS_ID (tok)), TOKEN_STR (tok), CLASS_ID (tok));

  /* 1. Find a rule that can be used with the current token. */
  int i = 0;
  while (cur_rule[i].steering != -1 && cur_rule[i].steering != CLASS_ID (tok))
    i += 1;

  printf_debug (1, "steering: %d (%s), jump_target: %d, stack_it: %d\n",
		cur_rule[i].steering, TOKEN_NAME (cur_rule[i].steering),
		cur_rule[i].jump_target, cur_rule[i].stack_it);

  struct token_s init_tok = tok;
retry:;
      tok = init_tok;
  if (cur_rule[i].jump_target == -2 && cur_rule[i].stack_it == -2)
    {
      /* We're reading eps. */
      printf_debug (1, "successfully ignored: %s\n", TOKEN_NAME (jump_target));
      struct token_s tok_ =
      { (char *)".", 0, 1, CAT_MODIFIER, jump_target, 0 };
      return create_token (tok_, 0, tok.begin);
    }
  else if (cur_rule[i].jump_target == -1 && cur_rule[i].stack_it == -1)
    {
      /* We're handling the rule for a terminal (not eps) */
      if (cur_rule[i].steering == CLASS_ID (tok))
	  // && tok.begin != tok.end) -- only fails when eps is last, eg. fence.
	{
	  /* We matched a token */
	  printf_debug (1, "matched %s\n", TOKEN_NAME (CLASS_ID (tok)));
	  tok.class_id = CLASS_ID (tok);
	  return create_token (tok, 1, tok.begin);
	}
      else
	{
	  /* This is a mandatory modifier */
	  *errs = error_list_insert (jump_target, tok.begin, *errs);
	  return NULL;
	}
    }

  /* Not on a terminal */
  struct token_list *fst_part =
    parse_with_restarts (tok, cur_rule[i].jump_target, rules, errs);
  /* While parsing fails but there is hope since the current token can be
     promoted.  */
  while (!fst_part && tok.class_id != (int) promote_token (tok))
    {
      free_token_list (fst_part);
      tok.class_id = promote_token (tok);
      printf_debug (1, "> Restart with %s?\n", TOKEN_NAME (CLASS_ID (tok)));
      fst_part = parse_with_restarts (tok, cur_rule[i].jump_target, rules, errs);
    };

  if (!fst_part)
    {
      i += 1;
      while (cur_rule[i].steering != CLASS_ID(tok) && cur_rule[i].steering != -1)
	i += 1;
      if (cur_rule[i].steering != -1)
	goto retry;
    }

  if (!fst_part)
    {
      printf_debug (1, "fst_part == NULL (Exiting %d)\n", jump_target);
      return NULL;
    }

  for (int _ = 0; _ < fst_part->len; ++_)
    {
      tok.begin = tok.end;
      end_of_line = !read_token (&tok);
    }

  if (end_of_line && cur_rule[i].stack_it == -1)
    {
      /* No more tokens and no more place to go */
      printf_debug (1, "return fst_part.\n");
      return fst_part;
    }
  else if (!end_of_line && cur_rule[i].stack_it == -1)
    {
      /* Too much tokens. */
      printf_debug (1, "too much tokens\n");
      *errs = error_list_insert (cur_rule[i].stack_it, tok.begin, *errs);
      return NULL;
    }
  else if (cur_rule[i].stack_it == -1)
    {
      printf_debug (1, "return fst_part. (end of rule)\n");
      return fst_part;
    }

  printf_debug (1, "snd_part: Trying to match: %s\n", TOKEN_NAME (CLASS_ID (tok)));
  struct token_list *snd_part = parse_with_restarts (tok, cur_rule[i].stack_it, rules, errs);
  while (!snd_part && tok.class_id != (int) promote_token (tok))
    {
      tok.class_id = promote_token (tok);
      printf_debug (1, ">> Restart with %s?\n", TOKEN_NAME (CLASS_ID (tok)));
      snd_part = parse_with_restarts (tok, cur_rule[i].stack_it, rules, errs);
    }

  if (!snd_part)
    {
      free_token_list (fst_part);
      i += 1;
      tok = init_tok;
      while (cur_rule[i].steering != CLASS_ID (tok) && cur_rule[i].steering != -1)
	i += 1;
      if (cur_rule[i].steering != -1)
	goto retry;
    }

  if (!snd_part)
    {
      printf_debug (1, "snd_part == NULL (Exiting %d)\n", jump_target);
      return NULL;
    }

  printf_debug (1, "Exiting rule: %d\n", jump_target,
		TOKEN_NAME (CLASS_ID (tok)), tok.class_id);

  /* Combine fst & snd parts */
  return token_list_append (fst_part, snd_part);
}

struct token_list *
parse (struct token_s tok)
{
  int error_code = 0;
  int error_char = 0;
  struct error_list *errs = NULL;
  read_token (&tok);

  struct token_list *tok_list =
    parse_with_restarts (tok, 0, env.rules, &errs);

  if (!tok_list)
    {
      struct error_list *cur_err = errs;
      while (cur_err)
	{
	  if (cur_err->loc > error_char)
	    {
	      error_char = cur_err->loc;
	      error_code = cur_err->rule;
	    }
	  cur_err = cur_err->nxt;
	}
    }

  free_error_list (errs);

  if (!tok_list)
    {
      if (error_code != -1)
	{
	  char buf[256] = { 0 };
	  const char * msg = "Unexpected token when parsing %s.\n";
	    for (int i = 0; i < (int) (strlen (msg) + error_char + 1 - 4) ; ++i)
	      buf[i] = ' ';
	    buf[strlen (msg) + error_char + 1 - 4] = '^';
	  as_bad (msg, tok.insn);
	  as_bad ("%s", buf);
	  char err_buf[10000] = { 0 };
	  rule_expect_error (error_code, err_buf, 10000);
	  as_bad ("%s", err_buf);
	}
      else
	{
	  char buf[256] = { 0 };
	  const char * msg = "Extra token when parsing %s.\n";
	    for (int i = 0; i < (int) (strlen (msg) + error_char + 1 - 4) ; ++i)
	      buf[i] = ' ';
	    buf[strlen (msg) + error_char + 1 - 4] = '^';
	  as_bad (msg, tok.insn);
	  as_bad ("%s\n", buf);
	}
    }
  else
    {
      printf_debug (1, "[PASS] Successfully matched %s\n", tok.insn);
      print_token_list (tok_list);
//      free_token_list (tok_list);
    }
  return tok_list;
}

void
setup (int core, int allow_all_sfr)
{
  switch (core)
  {
  case ELF_KVX_CORE_KV3_1:
    setup_kv3_v1 (allow_all_sfr);
    break;
  case ELF_KVX_CORE_KV3_2:
    setup_kv3_v2 (allow_all_sfr);
    break;
  case ELF_KVX_CORE_KV4_1:
    setup_kv4_v1 (allow_all_sfr);
    break;
  default:
    as_bad ("Unknown architecture");
    abort ();
  }

  for (int i = 0; env.token_classes->insn_classes[i].class_values ; ++i)
    env.insns =
      insert (env.token_classes->insn_classes[i].class_values[0], env.insns);
}

void
cleanup ()
{
  free_node (env.insns);
}
