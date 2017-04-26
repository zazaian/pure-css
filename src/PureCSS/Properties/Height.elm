module PureCSS.Properties.Height exposing (..)

import String exposing (toLower)
import PureCSS.DataTypes.Distance as Distance
import PureCSS.DataTypes.Distance exposing (Distance)
import PureCSS.Property exposing
    (PropertyName(Height)
    , Property
    , prop
    )


height : Distance -> Property
height distance =
    prop Height (Distance.toString distance)
