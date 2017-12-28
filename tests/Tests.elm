module Tests exposing (..)

import Test exposing (..)
import Expect
import Main exposing (..)


-- Check out http://package.elm-lang.org/packages/elm-community/elm-test/latest to learn more about testing in Elm!


captchaSumCalculatorTest : Test
captchaSumCalculatorTest =
    describe "A Test Suite"
        [ test "1122 => 3" <|
            \_ ->
                Expect.equal (captchaSumCalculator 1122) 3
        , test "1111 => 4" <|
            \_ ->
                Expect.equal (captchaSumCalculator 1111) 4
        , test "1234 => 0" <|
            \_ ->
                Expect.equal (captchaSumCalculator 1234) 0
        , test "91212129 => 9" <|
            \_ ->
                Expect.equal (captchaSumCalculator 91212129) 9
        ]
