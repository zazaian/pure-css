module CSS.DataTypes.Color exposing (..)

import CSS.DataTypes.Numeric exposing (Numeric)

type Color =
    BasicColorKeyword
    | RGB RGBTuple
    | RGBA RGBATuple


type BasicColorKeword =
     Black
     | Silver
     | Gray
     | White
     | Maroon
     | Red
     | Purple
     | Fuchsia
     | Green
     | Lime
     | Olive
     | Yellow
     | Navy
     | Blue
     | Teal
     | Aqua


type RGBTuple =
    RGB ( Numeric, Numeric, Numeric )


type RGBATuple =
    RGBA ( Numeric, Numeric, Numeric, Numeric )


type HSLTuple =
    HSL ( Numeric, Numeric, Numeric )


type HSLATuple =
    HSLA ( Numeric, Numeric, Numeric, Numeric )
