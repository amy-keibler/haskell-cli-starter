# Haskell CLI Starter

This is a [kickstart](https://github.com/Keats/kickstart) template for building a Haskell CLI application.

## Variables

### `project_name`

The name of the project in lowercase kebab form. This is used in the cabal file and the flake file.

### `project_description`

The short description of the purpose of the project. This is used in the cabal file and the flake file.

### `license`

The license of the project. Currently supports the [Be Gay, Do Crime](https://twitter.com/scanlime/status/1304825753029107712) license and a dual-license of [MIT](https://mit-license.org/) and/or [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0.html).

### `has_tests`

Is this project a throwaway utility or does it need a library and test suite to ensure it behaves correctly? Tests are done via [Hspec](https://hspec.github.io/).

### `has_mocks`

If the project has tests, should we include [HMock](https://github.com/cdsmith/HMock) to allow mocking of monads used within the application?

### `project_module`

When generating a project with tests, there will be a `src/{{ project_module}}.hs` and a `test/{{ project_module }}Test.hs` structure.


## Current Limitations

### `libffi`

I need to discover how to ensure that `libffi` is visible to GHC so that I can enable [hspec spec auto-discovery](https://hspec.github.io/hspec-discover.html)
