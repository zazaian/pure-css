module PureCSS.CSS.Properties.Width exposing (..)

import PureCSS.CSS.DataTypes.Distance exposing (LengthUnit)
import PureCSS.CSS.DataTypes.Textual exposing (CSSKeyword)
import String exposing (toLower)


type WidthValue =
    Length LengthUnit
    | Percent Int
    | CSSKeyword


width : WidthValue -> String
width widthValue =
    let
        value = case widthValue of
            Length number unit ->
                (toString number) ++ (unit |> toString |> toLower) ++ ";"

            Percent number ->
                (toString number) ++ "%;"

            CSSKeyword ->
                CSSKeyword
                |> toString
                |> toLower

    in
        "width: " ++ value ++ ";"
