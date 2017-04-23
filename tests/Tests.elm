module Tests exposing (..)

import Test exposing (..)
import Expect
import String

import Properties.WidthTests


all : Test
all =
    describe "PureCSS Unit Tests"
        [ Properties.WidthTests.all ]
