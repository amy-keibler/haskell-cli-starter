{
  description = "{{ project_description }}";
  inputs.haskellNix.url = "github:input-output-hk/haskell.nix";
  inputs.nixpkgs.follows = "haskellNix/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils, haskellNix }:
    flake-utils.lib.eachSystem [ "x86_64-linux" "x86_64-darwin" ] (system:
    let
      overlays = [ haskellNix.overlay
        (final: prev: {
          # This overlay adds our project to pkgs
          {{ project_name }} =
            final.haskell-nix.project' {
              src = ./.;
              compiler-nix-name = "ghc8105";
              shell.tools = {
                cabal = {};
                ghcid = {};
                haskell-language-server = {};
                hlint = {};
              };
              shell.withHoogle = true;
              shell.exactDeps = true;
            };
        })
      ];
      pkgs = import nixpkgs { inherit system overlays; };
      flake = pkgs.{{ project_name }}.flake {
        crossPlatforms = p: [];
      };
    in flake // {
      defaultPackage = flake.packages."{{ project_name }}:exe:{{ project_name }}";
    });
}
