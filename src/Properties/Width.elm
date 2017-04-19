module Properties.Width exposing (..)

import LengthUnits
import LengthUnits exposing (Units)



width : Int -> LengthUnits.Units -> String
width number unit =
    let
      unitVal = LengthUnits.toString unit

    in
        "width: " ++ (toString number) ++ unitVal ++ ";"
