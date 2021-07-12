module Main where

import Relude
{% if has_tests -%}
import {{ project_module }} (exampleFunction)
import qualified Data.Text.IO as TIO

main :: IO ()
main = TIO.putStrLn $ exampleFunction (Just "Amy")
{%- else -%}
main :: IO ()
main = putStrLn "Hello, Amy!"
{%- endif %}
