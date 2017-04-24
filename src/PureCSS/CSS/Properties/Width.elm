module PureCSS.CSS.Properties.Width exposing (..)

import String exposing (toLower)

type LengthUnit =
    Px

type CSSKeyword =
    Inherit

type WidthValue =
    Length Int LengthUnit
    | Percent Int
    | Keyword CSSKeyword


width : WidthValue -> String
width widthValue =
    let
        value = case widthValue of
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
