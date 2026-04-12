#!/bin/bash

img=$(find ~/Wallpaper/ajustadas -type f | shuf -n 1)

# gera posições aleatórias entre 0 e 1
x=$(awk -v seed=$RANDOM 'BEGIN{srand(seed); print rand()}')
y=$(awk -v seed=$RANDOM 'BEGIN{srand(seed); print rand()}')

awww img "$img" \
  --transition-type grow \
  --transition-duration 1.5 \
  --transition-pos $x,$y