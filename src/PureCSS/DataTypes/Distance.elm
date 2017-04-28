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
    , in
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


pct : Float -> Percent
pct number =
    Percent number


px : Float -> Length
px number =
    Length number Px


em : Float -> Length
em number =
    Length number Em


ex : Float -> Length
ex number =
    Length number Ex


ch : Float -> Length
ch number =
    Length number Ch


rem : Float -> Length
rem number =
    Length number Rem


vw : Float -> Length
vw number =
    Length number Vw


vh : Float -> Length
vh number =
    Length number Vh


vmin : Float -> Length
vmin number =
    Length number Vmin


vmax : Float -> Length
vmax number =
    Length number Vmax


cm : Float -> Length
cm number =
    Length number Cm


mm : Float -> Length
mm number =
    Length number Mm


q : Float -> Length
q number =
    Length number Q


in : Float -> Length
in number =
    Length number In


pc : Float -> Length
pc number =
    Length number Pc


pt : Float -> Length
pt number =
    Length number Pt
