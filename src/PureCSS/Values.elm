module PureCSS.Values exposing (..)

import PureCSS.DataTypes.Distance exposing (Distance)
import PureCSS.DataTypes.Keyword exposing
    ( CSSKeyword (..)
    )


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
