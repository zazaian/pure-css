module Tests exposing (..)

import Test exposing (..)
import Expect
import String

import Tests.PropertyTests
import Tests.Properties.HeightTests
import Tests.Properties.WidthTests
import Tests.Properties.BoxOffsetTests
import Tests.Properties.MarginTests
import Tests.ElementTests
import Tests.StylesheetTests
import Tests.ValuesTests
import Tests.DataTypes.DistanceTests


all : Test
all =
    describe "PureCSS Unit Tests"
        [ Tests.PropertyTests.all
        , Tests.Properties.HeightTests.all
        , Tests.Properties.WidthTests.all
        , Tests.Properties.BoxOffsetTests.all
        , Tests.Properties.MarginTests.all
        , Tests.ElementTests.all
        , Tests.StylesheetTests.all
        , Tests.ValuesTests.all
        , Tests.DataTypes.DistanceTests.all
        ]
