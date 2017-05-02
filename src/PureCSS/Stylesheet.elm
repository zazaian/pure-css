module PureCSS.Stylesheet exposing (..)

import PureCSS.Element exposing (Element)
import PureCSS.Element as Element


type alias Stylesheet =
    { elements : List Element
    , namespace : String
    , mixins : List String
    }


stylesheet : String -> List String -> List Element -> Stylesheet
stylesheet namespace mixins elements =
    { elements = elements
    , namespace = namespace
    , mixins = mixins
    }


toCSS : Stylesheet -> String
toCSS stylesheet =
    let

        elemStrs = List.map Element.toCSS (stylesheet.elements)
        finalElems = String.join "\n\n" elemStrs
    in
        finalElems
