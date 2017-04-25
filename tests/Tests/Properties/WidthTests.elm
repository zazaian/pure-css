module Tests.Properties.WidthTests exposing (..)

import Test exposing (..)
import Expect
import PureCSS.Properties.Width exposing (..)
import PureCSS.DataTypes.Distance exposing
    ( Distance(..)
    , LengthUnit(..)
    )
import PureCSS.DataTypes.Textual exposing (CSSKeyword(..))
import PureCSS.Property exposing
    (PropertyName(Width)
    , Property
    , prop
    )



all : Test
all =
    describe "width properties"
        [ test "width as length" <|
            \() ->
                width (Length 100 Px) |> Expect.equal { name = Width, val = "100px" }

        , test "width as percentage" <|
            \() ->
                width (Percent 50) |> Expect.equal { name = Width, val = "50%" }

        , test "width as CSS keyword" <|
            \() ->
                width (Keyword Inherit) |> Expect.equal { name = Width, val = "inherit" }

        ]

