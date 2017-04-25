module PureCSS.Properties.BoxOffset exposing (..)

import String exposing (toLower)
import PureCSS.DataTypes.Distance exposing (Distance)
import PureCSS.Values exposing (distanceVal)
import PureCSS.Property exposing
    (PropertyName(Top, Right, Bottom, Left)
    , Property
    , prop
    )


top : Distance -> Property
top distance =
    prop Top (distanceVal distance)
