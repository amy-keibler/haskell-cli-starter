{% if has_tests -%}
module Main where

import Test.Hspec
import Relude

import qualified {{ project_module }}Spec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "{{ project_module }}" {{ project_module }}Spec.spec

{%- endif %}
