module Tests.DataTypes.DistanceTests exposing (..)

import Test exposing (..)
import Expect
import PureCSS.DataTypes.Distance exposing
    ( Distance(..)
    , LengthUnit(..)
    , toString
    , em
    , ex
    , ch
    , relEm
    , vw
    , vh
    , vmin
    , vmax
    , cm
    , mm
    , q
    , inch
    , pc
    , pt
    , px
    )



all : Test
all =
    describe "distance helpers"
        [ test "px length" <|
            \() ->
                px 100 |> Expect.equal (Length 100 Px)

        , test "em length" <|
            \() ->
                em 100 |> Expect.equal (Length 100 Em)

        , test "ex length" <|
            \() ->
                ex 100 |> Expect.equal (Length 100 Ex)

        , test "ch length" <|
            \() ->
                ch 100 |> Expect.equal (Length 100 Ch)

        , test "rem length" <|
            \() ->
                relEm 100 |> Expect.equal (Length 100 Rem)

        , test "vw length" <|
            \() ->
                vw 100 |> Expect.equal (Length 100 Vw)

        , test "vh length" <|
            \() ->
                vh 100 |> Expect.equal (Length 100 Vh)

        , test "vmin length" <|
            \() ->
                vmin 100 |> Expect.equal (Length 100 Vmin)

        , test "vmax length" <|
            \() ->
                vmax 100 |> Expect.equal (Length 100 Vmax)

        , test "cm length" <|
            \() ->
                cm 100 |> Expect.equal (Length 100 Cm)

        , test "mm length" <|
            \() ->
                mm 100 |> Expect.equal (Length 100 Mm)

        , test "q length" <|
            \() ->
                q 100 |> Expect.equal (Length 100 Q)

        , test "inch length" <|
            \() ->
                inch 100 |> Expect.equal (Length 100 In)

        , test "pc length" <|
            \() ->
                pc 100 |> Expect.equal (Length 100 Pc)

        , test "pt length" <|
            \() ->
                pt 100 |> Expect.equal (Length 100 Pt)


        ]
