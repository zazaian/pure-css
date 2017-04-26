module PureCSS.DataTypes.Other exposing
    ( AngleUnit(..)
    , Angle
    , TimeUnit(..)
    , Time
    , FrequencyUnit(..)
    , Frequency
    , ResolutionUnit(..)
    , Resolution
    )

type AngleUnit =
    Deg
    | Grad
    | Rad
    | Turn


type alias Angle =
    Int Maybe AngleUnit


type TimeUnit =
    S
    | Ms


type alias Time =
    Int Maybe TimeUnit


type FrequencyUnit =
    Hz
    | Khz


type alias Frequency =
    Int Maybe FrequencyUnit


type ResolutionUnit =
    Dpi
    | Dpcm
    | Dppx


type alias Resolution =
    Int Maybe ResolutionUnit
