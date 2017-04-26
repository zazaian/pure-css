module PureCSS.Properties.Margins exposing (..)

import PureCSS.DataTypes.Distance as Distance
import PureCSS.DataTypes.Distance exposing (Distance)
import PureCSS.Property exposing
    (PropertyName(MarginTop, MarginRight, MarginBottom, MarginLeft)
    , Property
    , prop
    )


marginTop : Distance -> Property
marginTop distance =
    prop MarginTop (Distance.toString distance)


marginRight : Distance -> Property
marginRight distance =
    prop MarginRight (Distance.toString distance)


marginBottom : Distance -> Property
marginBottom distance =
    prop MarginBottom (Distance.toString distance)


marginLeft : Distance -> Property
marginLeft distance =
    prop MarginLeft (Distance.toString distance)


margin1 : Distance -> Property
margin1 distance =
    prop Margin (Distance.toString distance)


margin2 : (Distance, Distance) -> Property 
margin2 (distance1, distance2) =
    let
        value = (Distance.toString distance1)
            ++ " "
            ++ (Distance.toString distance2)
    in
        prop Margin value
