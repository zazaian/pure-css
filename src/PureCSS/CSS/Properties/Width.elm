module PureCSS.CSS.Properties.Width exposing (..)

import String exposing (toLower)
import PureCSS.CSS.DataTypes.Distance exposing (..)


width : Distance -> String
width distance =
    let
        value = case distance of
            Length number unit ->
                (toString number) ++ (unit |> toString |> toLower)

            Percent number ->
                (toString number) ++ "%"

            Keyword keyword ->
                keyword
                |> toString
                |> toLower

    in
        "width: " ++ value ++ ";"
