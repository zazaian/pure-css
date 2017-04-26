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


right : Distance -> Property
right distance =
    prop Right (Distance.toString distance)



bottom : Distance -> Property
bottom distance =
    prop Bottom (Distance.toString distance)


left : Distance -> Property
left distance =
    prop Left (Distance.toString distance)
