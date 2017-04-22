module PureCSS.Stylesheet exposing (..)


stylesheet : Elements -> Namespace -> Mixins -> Stylesheet


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
    , mixins = Mixin
    }
