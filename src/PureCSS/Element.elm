module PureCSS.Element exposing (..)

import PureCSS.Property as Property
import PureCSS.Property exposing (Property)
import String as String

elem : String -> List Property -> List Element -> Element
elem selector properties children =
    Element
        { selector = selector
        , properties = properties
        , children = children
        }


type Element
    = Element
        { selector : String
        , properties : List Property
        , children : List Element
        }


toCSS : Element -> String
toCSS element =
    let
        propStrs = map Property.toCSS element.properties
        finalProps = String.join "\n  " propStrs
    in
        element.selector
        ++ " {\n  "
        ++ finalProps
        ++ "}"
