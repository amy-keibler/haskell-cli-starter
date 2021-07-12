{% if has_tests -%}
module {{ project_module }} (exampleFunction) where
{%- endif %}

import Relude

exampleFunction :: Maybe Text -> Text
exampleFunction name = "Hello " <> (fromMaybe "World" name) <> "!"
