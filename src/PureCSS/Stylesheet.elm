module PureCSS.Stylesheet exposing (..)

import PureCSS.Element exposing (Element)
import PureCSS.Element as Element


type alias Stylesheet =
    { elements : List Element
    }


stylesheet : List Element -> Stylesheet
stylesheet elements =
    { elements = elements
    }


toCSS : Stylesheet -> String
toCSS stylesheet =
    let

        elemStrs = List.map Element.toCSS (stylesheet.elements)
        finalElems = String.join "\n\n" elemStrs
    in
        finalElems
