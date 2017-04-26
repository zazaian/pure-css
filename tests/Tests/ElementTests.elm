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
                    elem "div#container" [ widthProp ] [ Nothing ]
                        |> Expect.equal
                            Element
                                { selector = "div#container"
                                , properties = [ widthProp ]
                                , children = [ Nothing ]
                                }
        ]
