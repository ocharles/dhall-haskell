module Main where

import Normalization (normalizationTests)
import Examples (exampleTests)
import Parser (parserTests)
import Regression (regressionTests)
import Tutorial (tutorialTests)
import Format (formatTests)
import Test.Tasty

allTests :: TestTree
allTests =
    testGroup "Dhall Tests"
        [ normalizationTests
        , exampleTests
        , parserTests
        , regressionTests
        , tutorialTests
        , formatTests
        ]

main :: IO ()
main = defaultMain allTests
