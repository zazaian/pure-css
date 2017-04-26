module PureCSS.Properties.BoxOffset exposing (..)

import String exposing (toLower)
import PureCSS.DataTypes.Distance as Distance
import PureCSS.DataTypes.Distance exposing (Distance)
import PureCSS.Property exposing
    (PropertyName(Top, Right, Bottom, Left)
    , Property
    , prop
    )


top : Distance -> Property
top distance =
    prop Top (Distance.toString distance)
