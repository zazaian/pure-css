module Properties.Position exposing (..)


type Position =
  Static
  | Absolute
  | Fixed
  | Relative
  | Initial
  | Inherit



position : Position -> String
position value =
    let
        posVal = case value of
            Static ->
                "static"
            Absolute ->
                "absolute"
            Fixed ->
                "fixed"
            Relative ->
                "relative"
            Initial ->
                "initial"
            Inherit ->
                "inherit"
    in
         "position: " ++ posVal ++ ";"
