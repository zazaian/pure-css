module PureCSS.Properties.Margins exposing (..)

import PureCSS.DataTypes.Distance as Distance
import PureCSS.DataTypes.Distance exposing (Distance)
import PureCSS.Property exposing
    ( PropertyName
        ( MarginTop
        , MarginRight
        , MarginBottom
        , MarginLeft
        , Margin
        )
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


margin3 : (Distance, Distance, Distance) -> Property
margin3 (distance1, distance2, distance3) =
    let
        value = (Distance.toString distance1)
            ++ " "
            ++ (Distance.toString distance2)
            ++ " "
            ++ (Distance.toString distance3)
    in
        prop Margin value


margin4 : (Distance, Distance, Distance, Distance) -> Property
margin4 (distance1, distance2, distance3, distance4) =
    let
        value = (Distance.toString distance1)
            ++ " "
            ++ (Distance.toString distance2)
            ++ " "
            ++ (Distance.toString distance3)
            ++ " "
            ++ (Distance.toString distance4)
    in
        prop Margin value
