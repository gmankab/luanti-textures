#!/usr/bin/env bash

set -uexo pipefail

which c2c
which 7z

mkdir -p input/source/assets/minecraft
mkdir output
curl -L $url -o source.zip
7z x source.zip 'assets/minecraft/textures/*'
mv assets/minecraft/textures input/source/assets/minecraft/
c2c
7z a $name.7z output/source_mc_to_clonia
