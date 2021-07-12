{% if has_tests -%}
module {{ project_module }}Spec where

import {{ project_module }} (exampleFunction)
import Test.Hspec
import Relude

spec :: Spec
spec = do
  describe "Testing the example code" $ do
    it "should default to greeting the world" $ do
      exampleFunction Nothing `shouldBe` "Hello World!"
    it "should greet the user by name" $ do
      exampleFunction (Just "Amy") `shouldBe` "Hello Amy!"
{%- endif %}
