module PureCSS.DataTypes.Distance exposing
    ( Distance(..)
    , LengthUnit(..)
    , toString
    )

import PureCSS.DataTypes.Textual exposing (CSSKeyword)
import String exposing (toLower)


type Distance =
    Length Int LengthUnit
    | Percent Int
    | Keyword CSSKeyword


type LengthUnit =
    Em
    | Ex
    | Ch
    | Rem
    | Vw
    | Vh
    | Vmin
    | Vmax
    | Cm
    | Mm
    | Q
    | In
    | Pc
    | Pt
    | Px


toString: Distance -> String
toString distance =
    case distance of
        Length number unit ->
            (Basics.toString number) ++ (unit |> Basics.toString |> toLower)

        Percent number ->
            (Basics.toString number) ++ "%"

        Keyword keyword ->
            keyword
            |> Basics.toString
            |> toLower
