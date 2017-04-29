module Tests.ValuesTests exposing (..)

import Test exposing (..)
import Expect
import PureCSS.Values exposing (..)
import PureCSS.DataTypes.Distance exposing
    ( Distance(Keyword)
    )
import PureCSS.DataTypes.Keyword exposing
    ( CSSKeyword (..)
    )


all : Test
all =
    describe "keyword helper values"
        [ test "auto keyword" <|
            \() ->
                auto |> Expect.equal (Keyword Auto)

        , test "initial keyword" <|
            \() ->
                initial |> Expect.equal (Keyword Initial)

        , test "inherit keyword" <|
            \() ->
                inherit |> Expect.equal (Keyword Inherit)

        , test "unset keyword" <|
            \() ->
                unset |> Expect.equal (Keyword Unset)
        ]

