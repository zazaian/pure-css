module PureCSS.Properties.Width exposing (..)

import String exposing (toLower)
import PureCSS.DataTypes.Distance exposing
    ( Distance(Length,Percent,Keyword)
    , LengthUnit(Em,Ex,Ch,Rem,Vw,Vh,Vmin,Vmax,Cm,Mm,Q,In,Pc,Pt,Px)
    )
import PureCSS.DataTypes.Textual exposing
    (CSSKeyword(Initial,Inherit,Unset)
    )



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
