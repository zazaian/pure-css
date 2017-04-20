module CSS.DataTypes.Numeric exposing (..)

type Numeric =
    Integer Int
    | Number number
    | Percentage

type Percentage =
    LengthPct number
    | FrequencyPct number
    | AnglePct number
    | TimePct number
    | NumberPct number

type Dimension =
    number Unit

{-
Need to look up compatible and canonical units:
4.5. Compatible Units
-}
