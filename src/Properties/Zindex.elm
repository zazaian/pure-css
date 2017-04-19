module Properties.Zindex exposing (..)

type Values =
  Auto
  | Index Int
  | Initial
  | Inherit

zIndex : Values -> String
zIndex value =
    let
        zIndexVal = case value of
            Auto ->
                "auto"
            Index number ->
                toString number
            Initial ->
                "initial"
            Inherit ->
                "inherit"
    in
        "z-index: " ++ zIndexVal ++ ";"
