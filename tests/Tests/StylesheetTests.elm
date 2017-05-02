module Tests.StylesheetTests exposing (..)

import Test exposing (..)
import Expect
import PureCSS.Stylesheet exposing (..)
import PureCSS.Stylesheet as Stylesheet
import PureCSS.Element exposing (elem)
import PureCSS.Element as Element
import PureCSS.Property exposing
    ( PropertyName ( Width )
    , prop
    )


all : Test
all =
    describe "stylesheet tests"
        [ test "construct a stylesheet" <|
            \() ->
                let
                    widthProp = prop Width "100px"
                    element = elem "div#container" [ widthProp ] []
                in
                    stylesheet [ element ]
                        |> Expect.equal
                            { elements = [ element ]
                            }

        , test "stylesheet to CSS" <|
            \() ->
                let
                    widthProp = prop Width "100px"
                    element1 = elem "div#container" [ widthProp ] []
                    element2 = elem "class.column" [ widthProp ] []
                    sheet = stylesheet [ element1, element2 ]
                in
                    (Stylesheet.toCSS sheet)
                        |> Expect.equal
                            ( Element.toCSS element1
                            ++ "\n\n"
                            ++ Element.toCSS element2
                            )
        ]
