module PureCSS.Properties.Height exposing (..)

import String exposing (toLower)
import PureCSS.DataTypes.Distance exposing
    ( Distance(..)
    , LengthUnit(..)
    )
import PureCSS.DataTypes.Textual exposing
    (CSSKeyword(..)
    )
import PureCSS.Property exposing
    (PropertyName(Height)
    , Property
    , prop
    )


height : Distance -> Property
height distance =
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
        prop Height value