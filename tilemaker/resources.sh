#!/bin/bash

rm -rf ./tmp ./coastline ./landcover
mkdir -p ./tmp ./coastline ./landcover/ne_10m_urban_areas ./landcover/ne_10m_antarctic_ice_shelves_polys ./landcover/ne_10m_glaciated_areas

echo -e "\nDownloading..."
wget -q --show-progress -O tmp/water-polygons-split-4326.zip https://osmdata.openstreetmap.de/download/water-polygons-split-4326.zip
wget -q --show-progress -O tmp/ne_10m_urban_areas.zip https://naciscdn.org/naturalearth/10m/cultural/ne_10m_urban_areas.zip
wget -q --show-progress -O tmp/ne_10m_antarctic_ice_shelves_polys.zip https://naciscdn.org/naturalearth/10m/physical/ne_10m_antarctic_ice_shelves_polys.zip
wget -q --show-progress -O tmp/ne_10m_glaciated_areas.zip https://naciscdn.org/naturalearth/10m/physical/ne_10m_glaciated_areas.zip

echo -e "\nDecompressing..."
unzip -oj tmp/water-polygons-split-4326.zip water-polygons-split-4326/* -d coastline | grep .shp
unzip -o tmp/ne_10m_urban_areas.zip -d landcover/ne_10m_urban_areas | grep .shp
unzip -o tmp/ne_10m_antarctic_ice_shelves_polys.zip -d landcover/ne_10m_antarctic_ice_shelves_polys | grep .shp
unzip -o tmp/ne_10m_glaciated_areas.zip -d landcover/ne_10m_glaciated_areas | grep .shp

# clean
rm -rf ./tmp
