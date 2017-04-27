module PureCSS.Stylesheet exposing (..)


type alias Namespace =
    { name : String }


type alias Stylesheet =
    { elements = List Element
    , namespace = Namespace
    , mixins = List String
    }


stylesheet : List Element -> Namespace -> List String -> Stylesheet
stylesheet elements namespace mixins =
    { elements = elements
    , namespace = namespace
    , mixins = mixins
    }
