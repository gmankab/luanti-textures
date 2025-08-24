#!/usr/bin/env bash

set -uexo pipefail

mkdir -p input/Default_1.21.8/assets/minecraft
mkdir output
curl -L 'https://piston-data.mojang.com/v1/objects/a19d9badbea944a4369fd0059e53bf7286597576/client.jar' -o minecraft.jar
7z x minecraft.jar 'assets/minecraft/textures/*'
mv assets/minecraft/textures input/Default_1.21.8/assets/minecraft/
curl -L https://codeberg.org/ostech/craft_to_clonia_textures/releases/download/4aug25/CTCloniaTextures-linux-amd64-04Aug25 -o c2c
chmod +x c2c
./c2c
7z a minecraft-textures.7z output/default_1.21.8_mc_to_clonia/*
