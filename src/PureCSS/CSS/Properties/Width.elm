module PureCSS.CSS.Properties.Width exposing (..)

import PureCSS.Property exposing (Property)
import PureCSS.CSS.DataTypes.Numeric exposing (Length, Percentage)
import PureCSS.CSS.DataTypes.Textual exposing (CSSKeyword, cssKeywordToString)


type WidthValue =
    Length
    | Percentage
    | CSSKeyword


width : WidthValue -> String
width widthValue =
    let
        value = case value of
            Length ->
                "length"

            Percentage ->
                "percentage"

            CSSKeyword ->
                cssKeywordToString CSSKeyword

    in
        "width: " ++ value ++ ";"
