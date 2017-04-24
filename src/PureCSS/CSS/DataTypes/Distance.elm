module PureCSS.CSS.DataTypes.Distance exposing (.., Distance(..), LengthUnit(..))


import PureCSS.CSS.DataTypes.Textual exposing (CSSKeyword)


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
