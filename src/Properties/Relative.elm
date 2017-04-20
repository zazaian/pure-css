module Properties.Relative exposing (..)

import Size


type Relative =
  Auto
  | Length Int Size.Units
  | Initial
  | Inherit



top : Relative -> String
top value =
    let
        topVal = case value of
            Auto ->
                "auto"
            Length len unit ->
                (toString len) ++ Size.toString unit
            Initial ->
                "initial"
            Inherit ->
                "inherit"
    in
        "top: " ++ topVal ++ ";"



bottom : Relative -> String
bottom value =
    let
        bottomVal = case value of
            Auto ->
                "auto"
            Length len unit ->
                (toString len) ++ Size.toString unit
            Initial ->
                "initial"
            Inherit ->
                "inherit"
    in
        "bottom: " ++ bottomVal ++ ";"


left : Relative -> String
left value =
    let
        leftVal = case value of
            Auto ->
                "auto"
            Length len unit ->
                (toString len) ++ Size.toString unit
            Initial ->
                "initial"
            Inherit ->
                "inherit"
    in
        "left: " ++ leftVal ++ ";"

right : Relative -> String
right value =
    let
        rightVal = case value of
            Auto ->
                "auto"
            Length len unit ->
                (toString len) ++ Size.toString unit
            Initial ->
                "initial"
            Inherit ->
                "inherit"
    in
        "right: " ++ rightVal ++ ";"

