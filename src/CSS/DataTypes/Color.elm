module CSS.DataTypes.Color exposing (..)

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


type RGBValue =
    number Maybe Pct


type alias RGBTuple =
    ( RGBValue, RGBValue, RGBValue )


type alias RGBATuple =
    ( RGBValue, RGBValue, RGBValue, RGBValue )
