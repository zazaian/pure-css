module PureCSS.Values exposing (..)

import String exposing (toLower)
import PureCSS.DataTypes.Distance exposing
    ( Distance(..)
    , LengthUnit(..)
    )
import PureCSS.DataTypes.Textual exposing
    (CSSKeyword(..)
    )


distanceVal : Distance -> String
distanceVal distance =
    case distance of
        Length number unit ->
            (toString number) ++ (unit |> toString |> toLower)

        Percent number ->
            (toString number) ++ "%"

        Keyword keyword ->
            keyword
            |> toString
            |> toLower
