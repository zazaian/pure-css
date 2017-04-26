module PureCSS.Property exposing (
    PropertyName(..)
    , Property
    , prop
    )

import PureCSS.DataType exposing (DataType)


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


type alias Property =
    { name : PropertyName
    , val : DataType
    }


prop : PropertyName -> DataType -> Property
prop name val =
    Property name val
