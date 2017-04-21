module Properties.Width exposing (..)

import Size
import Size exposing (Units)



width : Int -> Size.Units -> String
width number unit =
    let
      unitVal = Size.toString unit

    in
        "width: " ++ (toString number) ++ unitVal ++ ";"
