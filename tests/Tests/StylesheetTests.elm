module Tests.StylesheetTests exposing (..)

import Test exposing (..)
import Expect
import PureCSS.Stylesheet exposing (..)
import PureCSS.Element exposing (elem)
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
                    stylesheet "main" [] [ element ]
                        |> Expect.equal
                            { namespace = "main"
                            , mixins = []
                            , elements = [ element ]
                            }

        ]
