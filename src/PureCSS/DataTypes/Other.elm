module PureCSS.DataTypes.Other exposing (..)

type AngleUnit =
    Deg
    | Grad
    | Rad
    | Turn


type Angle =
    number Maybe AngleUnit


type TimeUnit =
    S
    | Ms


type Time =
    number Maybe TimeUnit


type FrequencyUnit =
    Hz
    | Khz


type Frequency =
    number Maybe FrequencyUnit


type ResolutionUnit =
    Dpi
    | Dpcm
    | Dppx


type Resolution =
    number Maybe ResolutionUnit
