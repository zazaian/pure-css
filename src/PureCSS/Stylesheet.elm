module PureCSS.Stylesheet exposing (..)

import PureCSS.Element exposing (Element)


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



