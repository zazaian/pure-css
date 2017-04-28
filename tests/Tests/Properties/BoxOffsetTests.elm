module Tests.Properties.BoxOffsetTests exposing (..)

import Test exposing (..)
import Expect
import PureCSS.Properties.BoxOffset exposing (..)
import PureCSS.DataTypes.Distance exposing
    ( Distance(..)
    , LengthUnit(..)
    )
import PureCSS.DataTypes.Keyword exposing (CSSKeyword(..))
import PureCSS.Property exposing
    (PropertyName(Top,Right,Bottom,Left)
    )



all : Test
all =
    describe "top properties"
        [ test "top as length" <|
            \() ->
                top (Length 100 Px) |> Expect.equal { name = Top, val = "100px" }

        , test "top as percentage" <|
            \() ->
                top (Percent 50) |> Expect.equal { name = Top, val = "50%" }

        , test "top as CSS keyword" <|
            \() ->
                top (Keyword Inherit) |> Expect.equal { name = Top, val = "inherit" }

        , test "right as length" <|
            \() ->
                right (Length 100 Px) |> Expect.equal { name = Right, val = "100px" }

        , test "right as percentage" <|
            \() ->
                right (Percent 50) |> Expect.equal { name = Right, val = "50%" }

        , test "right as CSS keyword" <|
            \() ->
                right (Keyword Inherit) |> Expect.equal { name = Right, val = "inherit" }

        , test "bottom as length" <|
            \() ->
                bottom (Length 100 Px) |> Expect.equal { name = Bottom, val = "100px" }

        , test "bottom as percentage" <|
            \() ->
                bottom (Percent 50) |> Expect.equal { name = Bottom, val = "50%" }

        , test "bottom as CSS keyword" <|
            \() ->
                bottom (Keyword Inherit) |> Expect.equal { name = Bottom, val = "inherit" }

        , test "left as length" <|
            \() ->
                left (Length 100 Px) |> Expect.equal { name = Left, val = "100px" }

        , test "left as percentage" <|
            \() ->
                left (Percent 50) |> Expect.equal { name = Left, val = "50%" }

        , test "left as CSS keyword" <|
            \() ->
                left (Keyword Inherit) |> Expect.equal { name = Left, val = "inherit" }
        ]

