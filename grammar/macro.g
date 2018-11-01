MacroCall = path:Path "!" ident_input:IDENT? input:MacroInput;
MacroInput =
    "(" TOKEN_TREE* ")" |
    "[" TOKEN_TREE* "]" |
    "{" TOKEN_TREE* "}";

// FIXME(eddyb) could maybe be shared more with `MacroInput`?
// The problem is the semicolons for the `()` and `[]` cases.
ItemMacroCall = path:Path "!" ident_input:IDENT? input:ItemMacroInput;
ItemMacroInput =
    "(" TOKEN_TREE* ")" ";" |
    "[" TOKEN_TREE* "]" ";" |
    "{" TOKEN_TREE* "}";
