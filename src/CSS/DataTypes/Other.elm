module CSS.DataTypes.Other exposing (..)

type AngleUnit =
    Deg
    | Grad
    | Rad
    | Turn


type Angle =
    number AngleUnit


type TimeUnit =
    S
    | Ms


type Time =
    number TimeUnit
