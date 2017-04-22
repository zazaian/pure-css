module PureCSS.Stylesheet exposing (..)


stylesheet : Elements -> Namespace -> Mixins -> Stylesheet
stylesheet elements namespace mixins =
    { elements = elements
    , namespace = namespace
    , mixins = mixins
    }


type Elements =
    List Element


type Namespace =
    String
    | Nothing

type Mixins =
    List Mixin


type alias Stylesheet =
    { elements = Elements
    , namespace = Namespace
    , mixins = Mixins
    }
