module PureCSS.Property exposing (
    PropertyName(..)
    , Property
    , prop
    )


type PropertyName =
    Height
    | Width
    | Top
    | Right
    | Bottom
    | Left
    | MarginTop
    | MarginRight
    | MarginBottom
    | MarginLeft
    | Margin


type alias Property =
    { name : PropertyName
    , val : String
    }


prop : PropertyName -> String -> Property
prop name val =
    Property name val


toCSS : Property -> String
toCSS property =
   toString property.name
   ++ ": "
   ++ property.val
   ++ ";\n"
