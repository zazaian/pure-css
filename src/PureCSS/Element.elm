module PureCSS.Element exposing (..)


elem : Selector -> Properties -> Children -> Element
elem selector properties children =
    { selector = selector
    , properties = properties
    , children = children
    }


type alias Selector
    = String


type alias Properties
    = List Property


type alias Children
    = List Element


type alias Element =
    { selector = Selector
    , properties = Properties
    , children = Children
    }
