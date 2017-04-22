module PureCSS.CSS.DataTypes.Numeric exposing (..)

import PureCSS.CSS.DataTypes.distance exposing (LengthUnit)

type Numeric =
    number Maybe Pct


type Length =
    number LengthUnit


type Percentage =
    number Pct


type Dimension =
    number Unit
