module PureCSS.Properties.Width exposing (..)

import PureCSS.DataTypes.Distance as Distance
import PureCSS.DataTypes.Distance exposing (Distance)
import PureCSS.Property exposing
    (PropertyName(Width)
    , Property
    , prop
    )


width : Distance -> Property
width distance =
    prop Width (Distance.toString distance)
