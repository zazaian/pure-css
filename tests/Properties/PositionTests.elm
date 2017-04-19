module Properties.PositionTests exposing (..)

import Test exposing (..)
import Expect
import Properties.Position exposing (..)

all : Test
all =
    describe "some stuff"
        [ test "absolute position" <|
            \() ->
                position Absolute |> Expect.equal "position: absolute;"
        ]
