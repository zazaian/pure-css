module Tests.Properties.BoxOffsetTests exposing (..)

import Test exposing (..)
import Expect
import PureCSS.Properties.BoxOffset exposing (..)
import PureCSS.DataTypes.Distance exposing
    ( Distance(..)
    , LengthUnit(..)
    )
import PureCSS.DataTypes.Textual exposing (CSSKeyword(..))
import PureCSS.Property exposing
    (PropertyName(Top)
    , Property
    , prop
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

        ]

