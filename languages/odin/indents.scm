[
  (block)
  (enum_declaration)
  (union_declaration)
  (struct_declaration)
  (struct)
  (parameters)
  (tuple_type)
  (call_expression)
  (switch_case)
] @indent.begin

; hello(
((identifier) . (ERROR "(" @indent.begin))

(_ "[" "]" @end) @indent
(_ "(" ")" @end) @indent

; Have to do all closing brackets separately because the one for switch statements shouldn't end.
(block "{" "}" @end) @indent
(enum_declaration "{" "}" @end) @indent
(union_declaration "{" "}" @end) @indent
(struct_declaration "{" "}" @end) @indent
(struct "{" "}" @end) @indent
(map "{" "}" @end) @indent

[
  (comment)
  (block_comment)
  (string)
  (ERROR)
] @indent.auto
