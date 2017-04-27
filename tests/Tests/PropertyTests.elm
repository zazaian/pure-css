module Tests.PropertyTests exposing (..)

import Test exposing (..)
import Expect
import PureCSS.Property exposing
    ( PropertyName
        ( Width
        )
    , Property
    , prop
    , toCSS
    )


all : Test
all =
    describe "defining width with prop"
        [ test "build a width property" <|
            \() ->
                (prop Width "100px") |> Expect.equal { name = Width, val = "100px" }

        , test "construct a Property" <|
            \() ->
                (Property Width "100px") |> Expect.equal { name = Width, val = "100px" }

        , test "convert a Property to CSS" <|
            \() ->
                toCSS (Property Width "100px") |> Expect.equal "width: 100px;"
        ]

