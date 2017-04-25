module PureCSS.Property exposing (
    PropertyName(Width)
    , Property, prop
    )


type PropertyName =
    Width


type alias Property =
    { name : PropertyName
    , val : String
    }


prop : PropertyName -> String -> Property
prop name val =
    { name = name
    , val = val
    }
