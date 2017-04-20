module CSS.DataTypes.Textual exposing (..)

{-
Consult URL definition at:
https://www.w3.org/TR/css3-values/#urls
-}


type Keywords =
   Initial
   | Inherit
   | Unset

type alias URL =
    String

type alias Modifier =
    String

type ResourceLocator =
   AbsoluteURL URL
   | RelativeURL URL
   | EmptyURL
   | ModifiedURL URL Modifier
