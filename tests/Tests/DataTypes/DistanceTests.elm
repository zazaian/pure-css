module Tests.DataTypes.DistanceTypes exposing (..)

import Test exposing (..)
import Expect
import PureCSS.DataTypes.Distance exposing
    ( Distance(..)
    , LengthUnit(..)
    , toString
    , em
    , ch
    , rem
    , vw
    , vh
    , vmin
    , vmax
    , cm
    , mm
    , q
    , in
    , pc
    , pt
    , px
    )



all : Test
all =
    describe "distance helpers"
        [ test "px length" <|
            \() ->
                px 100 |> Expect.equal Length 100 Px

        , test "em length" <|
            \() ->
                em 100 |> Expect.equal Length 100 Em

        , test "ex length" <|
            \() ->
                ex 100 |> Expect.equal Length 100 Ex
        ]
