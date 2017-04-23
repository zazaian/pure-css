module PureCSS.CSS.DataTypes.Textual exposing (..)

{-
Consult URL definition at:
https://www.w3.org/TR/css3-values/#urls
-}

-- CSS-Wide Keywords


type CSSKeyword =
   Initial
   | Inherit
   | Unset


type alias URLPath =
    String


type alias URLModifier =
    String


type URLType =
    Absolute
    | Relative
    | Empty
    | Modified


type alias URL =
    Maybe URLPath Maybe URLModifier Maybe URLType
