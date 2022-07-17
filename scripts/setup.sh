#!/usr/bin/env bash
set -eu -o pipefail

# Update submodules
# Could use --recursive, but tinyusb has tons of submodules that we don't want
git submodule update --init
pushd vendor/pico-sdk
git submodule update --init
popd

# Set up build directory
mkdir build
pushd build
cmake .. -G Ninja
popd
