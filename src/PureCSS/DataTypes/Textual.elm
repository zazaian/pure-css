module PureCSS.DataTypes.Textual exposing
    (CSSKeyword(..)
    , URLPath
    , URLModifier
    , URLType(..)
    )

{-
Consult URL definition at:
https://www.w3.org/TR/css3-values/#urls
-}

-- CSS-Wide Keywords


type CSSKeyword =
   Auto
   | Initial
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
