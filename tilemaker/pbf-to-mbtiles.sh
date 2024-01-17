#!/bin/sh

PBF_FILE="source.osm.pbf"
MBTILES_FILE="planet.mbtiles"

bin/tilemaker --input $PBF_FILE \
              --output $MBTILES_FILE \
              --config ./config.json \
              --process ./process.lua \
              --fast
              

