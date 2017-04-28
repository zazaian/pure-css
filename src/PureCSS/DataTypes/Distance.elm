module PureCSS.DataTypes.Distance exposing
    ( Distance(..)
    , LengthUnit(..)
    , toString
    , em
    , ch
    , rem
    , vw
    , vh
    , vmin
    , vmax
    , cm
    , mm
    , q
    , inches
    , pc
    , pt
    , px
    )

import PureCSS.DataTypes.Textual exposing (CSSKeyword)
import String exposing (toLower)


type Distance =
    Length Float LengthUnit
    | Percent Float
    | Keyword CSSKeyword
    | Zero


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


toString : Distance -> String
toString distance =
    case distance of
        Zero ->
            "0"

        Length number unit ->
            (Basics.toString number) ++ (unit |> Basics.toString |> toLower)

        Percent number ->
            (Basics.toString number) ++ "%"

        Keyword keyword ->
            keyword
            |> Basics.toString
            |> toLower


pct : Float -> Distance
pct number =
    Percent number


px : Float -> Distance
px number =
    Length number Px


em : Float -> Distance
em number =
    Length number Em


ex : Float -> Distance
ex number =
    Length number Ex


ch : Float -> Distance
ch number =
    Length number Ch


rem : Float -> Distance
rem number =
    Length number Rem


vw : Float -> Distance
vw number =
    Length number Vw


vh : Float -> Distance
vh number =
    Length number Vh


vmin : Float -> Distance
vmin number =
    Length number Vmin


vmax : Float -> Distance
vmax number =
    Length number Vmax


cm : Float -> Distance
cm number =
    Length number Cm


mm : Float -> Distance
mm number =
    Length number Mm


q : Float -> Distance
q number =
    Length number Q


inches : Float -> Distance
inches number =
    Length number In


pc : Float -> Distance
pc number =
    Length number Pc


pt : Float -> Distance
pt number =
    Length number Pt
