module Properties.WidthTests exposing (..)

import Test exposing (..)
import Expect
import PureCSS.CSS.Properties.Width exposing (..)
import PureCSS.CSS.DataTypes.Distance exposing (LengthUnit)
import PureCSS.CSS.DataTypes.Textual exposing (CSSKeyword)


all : Test
all =
    describe "width properties"
        [ test "width as length" <|
            \() ->
                width Length 100 Px |> Expect.equal "width: 100px;"

        , test "width as percentage" <|
            \() ->
                width Percent 50 |> Expect.equal "width: 50%;"

        , test "width as CSS keyword" <|
            \() ->
                width Inherit |> Expect.equal "width: inherit;"

        ]

