# to install use ./nix/update.sh
#
# Use https://ahobson.github.io/nix-package-search
# to find rev for specific package version

let
  pkgs = import <nixpkgs> {};
  inherit (pkgs) buildEnv;
in buildEnv {
  name = "otelhttp-packages";
  paths = [

    (import
      (builtins.fetchGit {
        # Descriptive name to make the store path easier to identify
        name = "go-1.20.3";
        url = "https://github.com/NixOS/nixpkgs/";
        ref = "refs/heads/nixpkgs-unstable";
        rev = "96ba1c52e54e74c3197f4d43026b3f3d92e83ff9";
      })
      { }).go_1_20

    (import
      (builtins.fetchGit {
        # Descriptive name to make the store path easier to identify
        name = "pre-commit-3.2.2";
        url = "https://github.com/NixOS/nixpkgs/";
        ref = "refs/heads/nixpkgs-unstable";
        rev = "b605a205390e53e18c03329ab3dba489970c1e0a";
      })
      { }).pre-commit

    (import (builtins.fetchGit {
      # Descriptive name to make the store path easier to identify
      name = "act-0.2.24";
      url = "https://github.com/NixOS/nixpkgs/";
      ref = "refs/heads/nixpkgs-unstable";
      rev = "a1de1fc28b27da87a84a0b4c9128972ac4a48193";
    }) {}).act


  ];

}
