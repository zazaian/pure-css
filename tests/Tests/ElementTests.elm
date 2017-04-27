module Tests.ElementTests exposing (..)

import Test exposing (..)
import Expect
import PureCSS.Element exposing (..)
import PureCSS.Property exposing
    ( Property
    , PropertyName ( Width )
    , prop
    )


all : Test
all =
    describe "elements"
        [ test "build an element" <|
            \() ->
                let
                    widthProp = prop Width "100px"
                in
                    elem "div#container" [ widthProp ] []
                        |> Expect.equal
                            ( Element
                                { selector = "div#container"
                                , properties = [ widthProp ]
                                , children = []
                                }
                            )

        , test "nested elements" <|
            \() ->
                let
                    widthProp = prop Width "100px"
                    child = elem ".waffles" [ widthProp ] []
                in
                    elem "div#container" [ widthProp ] [ child ]
                        |> Expect.equal
                            ( Element
                                { selector = "div#container"
                                , properties = [ widthProp ]
                                , children =
                                    [ Element
                                        { selector = ".waffles"
                                        , properties = [ widthProp ]
                                        , children = []
                                        }
                                    ]
                                }
                            )
        , test "convert Element to CSS" <|
            \() ->
                let
                    widthProp = prop Width "100px"
                    elem = elem "div#container" [ widthProp ] []
                in
                        |> Expect.equal
                            """
                            div#container {
                              width: 100px;
                            }
                            """

        ]
