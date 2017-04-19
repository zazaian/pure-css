module Tests exposing (..)

import Test exposing (..)
import Expect
import String

import Properties.PositionTests


all : Test
all =
    describe "A Test Suite"
        [ Properties.PositionTests.all ]
