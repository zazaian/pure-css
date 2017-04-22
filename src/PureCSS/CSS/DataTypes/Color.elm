module PureCSS.CSS.DataTypes.Color exposing (..)

import PureCSS.CSS.DataTypes.Numeric exposing (Numeric)

type Color =
    ColorKeyword
    | RGB TriColor
    | RGBA QuadColor
    | HSL TriColor
    | HSLA QuadColor


type alias TriColor =
    ( Numeric, Numeric, Numeric )


type alias QuadColor =
    ( Numeric, Numeric, Numeric, Numeric )


type ColorKeyword =
     BasicColorKeyword
     | X11ColorKeyword


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


type X11ColorKeyword =
    AliceBlue
    | AntiqueWhite
    | Aquamarine
    | Azure
    | Beige
    | Bisque
    | Black
    | BlanchedAlmond
    | BlueViolet
    | Brown
    | Burlywood
    | CadetBlue
    | Chartreuse
    | Chocolate
    | Coral
    | Cornflower
    | Cornsilk
    | Crimson
    | Cyan
    | DarkBlue
    | DarkCyan
    | DarkGoldenrod
    | DarkGray
    | DarkGreen
    | DarkKhaki
    | DarkMagenta
    | DarkOliveGreen
    | DarkOrange
    | DarkOrchid
    | DarkRed
    | DarkSalmon
    | DarkSeaGreen
    | DarkSlateBlue
    | DarkSlateGray
    | DarkTurquoise
    | DarkViolet
    | DeepPink
    | DeepSkyBlue
    | DimGray
    | DodgerBlue
    | Firebrick
    | FloralWhite
    | ForestGreen
    | Gainsboro
    | GhostWhite
    | Gold
    | Goldenrod
    | WebGray
    | WebGreen
    | GreenYellow
    | Honeydew
    | HotPink
    | IndianRed
    | Indigo
    | Ivory
    | Khaki
    | Lavender
    | LavenderBlush
    | LawnGreen
    | LemonChiffon
    | LightBlue
    | LightCoral
    | LightCyan
    | LightGoldenrod
    | LightGray
    | LightGreen
    | LightPink
    | LightSalmon
    | LightSeaGreen
    | LightSkyBlue
    | LightSlateGray
    | LightSteelBlue
    | LightYellow
    | LimeGreen
    | Linen
    | Magenta
    | WebMaroon
    | MediumAquamarine
    | MediumBlue
    | MediumOrchid
    | MediumPurple
    | MediumSeaGreen
    | MediumSlateBlue
    | MediumSpringGreen
    | MediumTurquoise
    | MediumVioletRed
    | MidnightBlue
    | MintCream
    | MistyRose
    | Moccasin
    | NavajoWhite
    | NavyBlue
    | OldLace
    | OliveDrab
    | Orange
    | OrangeRed
    | Orchid
    | PaleGoldenrod
    | PaleGreen
    | PaleTurquoise
    | PaleVioletRed
    | PapayaWhip
    | PeachPuff
    | Peru
    | Pink
    | Plum
    | PowderBlue
    | WebPurple
    | RebeccaPurple
    | RosyBrown
    | RoyalBlue
    | SaddleBrown
    | Salmon
    | SandyBrown
    | SeaGreen
    | Seashell
    | Sienna
    | SkyBlue
    | SlateBlue
    | SlateGray
    | Snow
    | SpringGreen
    | SteelBlue
    | Tan
    | Thistle
    | Tomato
    | Turquoise
    | Violet
    | Wheat
    | WhiteSmoke
    | YellowGreen
