module Tests exposing (..)

import Test exposing (..)
import Expect
import String

import Properties.WidthTests
import Tests.PropertyTests


all : Test
all =
    describe "PureCSS Unit Tests"
        [ Properties.WidthTests.all
        , Tests.PropertyTests.all
        ]
