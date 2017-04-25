module PureCSS.Property exposing (
    PropertyName(..)
    , Property
    , prop
    )


type PropertyName =
    Height
    | Width


type alias Property =
    { name : PropertyName
    , val : String
    }


prop : PropertyName -> String -> Property
prop name val =
    Property name val
