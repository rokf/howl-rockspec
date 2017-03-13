
howl.util.lpeg_lexer ->
  c = capture

  bracket_quote_lvl_start = P'[' * Cg(P('=')^0, 'lvl') * '['
  bracket_quote_lvl_end = ']' * match_back('lvl') * ']'
  bracket_quote =  bracket_quote_lvl_start * scan_to(bracket_quote_lvl_end)^-1

  comment = c 'comment', '--' * any {
    bracket_quote,
    scan_until eol,
  }

  sq_string = span("'", "'", '\\')
  dq_string = span('"', '"', P'\\')

  string = c 'string', any {
    sq_string,
    dq_string,
    bracket_quote
  }

  operator = c 'operator', S'+-*!/%^#~=<>;:,.(){}[]'

  hexadecimal_number =  P'0' * S'xX' * xdigit^1 * (P'.' * xdigit^1)^0 * (S'pP' * S'-+'^0 * xdigit^1)^0
  float = digit^0 * P'.' * digit^1

  number = c 'number', any({
    hexadecimal_number * any('LL', 'll', 'ULL', 'ull')^-1,
    digit^1 * any { 'LL', 'll', 'ULL', 'ull' },
    (float + digit^1) * (S'eE' * P('-')^0 * digit^1)^0
  })

  ident = (alpha + '_')^1 * (alpha + digit + '_')^0
  identifier = c 'identifier', ident
  constant = c 'constant', upper^1 * any(upper, '_', digit)^0 * any(eol, -#lower)

  special = c 'special', any {
    'true',
    'false',
    'nil',
    '_' * upper^1 -- variables conventionally reserved for Lua
  }

  any {
    number,
    string,
    comment,
    operator,
    special,
    constant,
    identifier,
  }
