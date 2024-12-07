# Planetiler

- https://github.com/onthegomap/planetiler
- https://github.com/openmaptiles/planetiler-openmaptiles

## Install Java 21 jre (ubuntu 22.x)
```
sudo apt-get update && sudo apt-get install -y openjdk-21-jre-headless screen
```

## Download planetiler.jar
```
wget https://github.com/openmaptiles/planetiler-openmaptiles/releases/download/v3.14/planetiler-openmaptiles.jar
```

## Create mbtiles

### Test on Monaco
```
java -Xmx1g -jar planetiler-openmaptiles.jar --download --area=monaco
```


### Only Russia (VM with RAM > 1.5 x PBF size)
```
java -Xmx4g \
  -XX:MaxHeapFreeRatio=40 \
  -jar planetiler-openmaptiles.jar \
  --area=russia --download \
  --download-threads=10 --download-chunk-size-mb=1000 \
  --output=output.mbtiles
```


### Planet if VM RAM > 140GB
```
java -Xmx140g \
  -XX:MaxHeapFreeRatio=40 \
  -jar planetiler-openmaptiles.jar \
  --area=planet --bounds=planet --download \
  --download-threads=10 --download-chunk-size-mb=1000 \
  --languages=ru,en \
  --output=planet.mbtiles \
  --nodemap-type=array --storage=ram
  ```


### Planet if VM RAM < 64GB
```
java -Xmx25g \
  -jar planetiler-openmaptiles.jar \
  --area=planet --bounds=planet --download \
  --download-threads=10 --download-chunk-size-mb=1000 \
  --languages=ru,en \
  --output=planet.mbtiles \
  --nodemap-type=array --storage=mmap
```
