module PureCSS.DataTypes.Textual exposing
    ( URLPath
    , URLModifier
    , URLType(..)
    )

{-
Consult URL definition at:
https://www.w3.org/TR/css3-values/#urls
-}


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
