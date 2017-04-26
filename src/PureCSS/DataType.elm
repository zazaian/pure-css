module PureCSS.DataType exposing (..)

import PureCSS.DataTypes.Color exposing (Color)
import PureCSS.DataTypes.Distance exposing (Distance)
import PureCSS.DataTypes.Other exposing (Angle, Time, Frequency, Resolution)
import PureCSS.DataTypes.Textual exposing (CSSKeyword, URLType)

type DataType =
    Color
    | Distance
    | Angle
    | Time
    | Frequency
    | Resolution
    | CSSKeyword
    | URLType
