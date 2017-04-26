module Tests.Properties.MarginTests exposing (..)

import Test exposing (..)
import Expect
import PureCSS.Properties.Margins exposing (..)
import PureCSS.DataTypes.Distance exposing
    ( Distance(..)
    , LengthUnit(..)
    )
import PureCSS.DataTypes.Textual exposing (CSSKeyword(..))
import PureCSS.Property exposing
    ( PropertyName
        ( MarginTop
        , MarginRight
        , MarginBottom
        , MarginLeft
        , Margin
        )
    )



all : Test
all =
    describe "margin properties"
        [ test "marginTop with Distance" <|
            \() ->
                marginTop (Length 100 Px) |> Expect.equal { name = MarginTop, val = "100px" }

        , test "marginRight with Distance" <|
            \() ->
                marginRight (Length 100 Px) |> Expect.equal { name = MarginRight, val = "100px" }

        , test "marginBottom with Distance" <|
            \() ->
                marginBottom (Length 100 Px) |> Expect.equal { name = MarginBottom, val = "100px" }

        , test "marginLeft with Distance" <|
            \() ->
                marginLeft (Length 100 Px) |> Expect.equal { name = MarginLeft, val = "100px" }

        , test "margin1 with Distance" <|
            \() ->
                margin1 (Length 100 Px) |> Expect.equal { name = Margin, val = "100px" }

        , test "margin2 with Distance Tuple" <|
            \() ->
                margin2 (Length 100 Px, Length 80 Px) |> Expect.equal { name = Margin, val = "100px 80px" }
        ]

