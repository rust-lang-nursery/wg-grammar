Stmt =
    Item:Item |
    Local:{ attrs:OuterAttr* "let" pat:Pat { ":" ty:Type }? { "=" init:Expr }? ";" } |
    Expr:Expr |
    Semi:";";

Block = "{" attrs:InnerAttr* Stmt* "}";
