#!/usr/bin/env nix-shell
#!nix-shell -i bash -p nix-prefetch-git

set -euo pipefail

PINS_DIR=`dirname $0`

nix-prefetch-git https://github.com/NixOS/nixpkgs-channels \
                 --rev refs/heads/nixos-19.03 \
                 > $PINS_DIR/default-nixpkgs-src.json

nix-prefetch-git https://github.com/NixOS/nixpkgs-channels \
                 --rev refs/heads/nixos-unstable \
                 > $PINS_DIR/rust-nixpkgs-src.json

nix-prefetch-git https://github.com/input-output-hk/haskell.nix \
                 > $PINS_DIR/haskell-nix.json
