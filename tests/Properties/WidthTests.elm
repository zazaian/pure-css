module Properties.WidthTests exposing (..)

import Test exposing (..)
import Expect
import PureCSS.CSS.Properties.Width exposing (..)

all : Test
all =
    describe "width properties"
        [ test "absolute position" <|
            \() ->
                position Absolute |> Expect.equal "position: absolute;"

        , test "static position" <|
            \() ->
                position Static |> Expect.equal "position: static;"

        , test "fixed position" <|
            \() ->
                position Fixed |> Expect.equal "position: fixed;"

        ]

