module Properties.PositionTests exposing (..)

import Test exposing (..)
import Expect
import Properties.Position exposing (..)

all : Test
all =
    describe "position properties"
        [ test "absolute position" <|
            \() ->
                position Absolute |> Expect.equal "position: absolute;"

        , test "static position" <|
            \() ->
                position Static |> Expect.equal "position: static;"

        , test "fixed position" <|
            \() ->
                position Fixed |> Expect.equal "position: fixed;"

        , test "relative position" <|
            \() ->
                position Relative |> Expect.equal "position: relative;"

        , test "initial position" <|
            \() ->
                position Initial |> Expect.equal "position: initial;"

        , test "inherit position" <|
            \() ->
                position Inherit |> Expect.equal "position: inherit;"
        ]
