Vis =
    Crate:"crate" |
    Pub:"pub" |
    Restricted:{ "pub" "(" restriction:VisRestriction ")" };
VisRestriction =
    Crate:"crate" |
    Self_:"self" |
    Super:"super" |
    Path:{ "in" path:Path };
