module PureCSS.Properties.Relative exposing (..)

import PureCSS.DataTypes.Keyword exposing (CSSKeyword)


type Relative =
  Auto
  | Length Int Size.Units
  | CSSKeyword
