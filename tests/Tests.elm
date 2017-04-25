module Tests exposing (..)

import Test exposing (..)
import Expect
import String

import Tests.PropertyTests
import Tests.Properties.HeightTests
import Tests.Properties.WidthTests


all : Test
all =
    describe "PureCSS Unit Tests"
        [ Tests.PropertyTests.all
        , Tests.Properties.HeightTests.all
        , Tests.Properties.WidthTests.all
        ]
