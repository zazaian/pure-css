module PureCSS.Element exposing (..)

import PureCSS.Property exposing (Property)

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
