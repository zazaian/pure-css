module Properties exposing (..)

import LengthUnits



width : Int -> LengthUnits.Units -> String
width number unit =
    let
      unitVal = LengthUnits.toString unit

    in
        "width: " ++ (toString number) ++ unitVal ++ ";"
