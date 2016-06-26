import style from howl.ui

style.define 'longstring', 'string'

class RockspecMode
  new: =>
    @lexer = bundle_load('rockspec_lexer')
    @completers = { 'in_buffer' }

  comment_syntax: '--'

  auto_pairs: {
    '(': ')'
    '[': ']'
    '{': '}'
    '"': '"'
    "'": "'"
  }

  indentation: {
    more_after: {
      r'[({=]\\s*(--.*|)$' -- hanging operators
    }

    less_for: {
      '^%s*}'
      r'^\\s*\\}\\b'
    }
  }

  code_blocks:
    multiline: {}
