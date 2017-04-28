module PureCSS.DataTypes.Keyword exposing
    ( CSSKeyword (..)
    )

import PureCSS.DataTypes.Distance exposing
    ( Distance
        ( Keyword
        )
    )


-- CSS-Wide Keywords


type CSSKeyword =
   Auto
   | Initial
   | Inherit
   | Unset


auto : Distance
auto =
    Keyword Auto


initial : Distance
initial =
    Keyword Initial


inherit : Distance
inherit =
    Keyword Inherit


unset : Distance
unset =
    Keyword Unset
