module Tests.Properties.HeightTests exposing (..)

import Test exposing (..)
import Expect
import PureCSS.Properties.Height exposing (..)
import PureCSS.DataTypes.Distance exposing
    ( Distance(..)
    , LengthUnit(..)
    )
import PureCSS.DataTypes.Textual exposing (CSSKeyword(..))
import PureCSS.Property exposing
    (PropertyName(Height)
    , Property
    , prop
    )



all : Test
all =
    describe "height properties"
        [ test "height as length" <|
            \() ->
                height (Length 100 Px) |> Expect.equal { name = Height, val = "100px" }

        , test "height as percentage" <|
            \() ->
                height (Percent 50) |> Expect.equal { name = Height, val = "50%" }

        , test "height as CSS keyword" <|
            \() ->
                height (Keyword Inherit) |> Expect.equal { name = Height, val = "inherit" }

        ]

