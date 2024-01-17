# Planetiler
https://github.com/onthegomap/planetiler

## Install Java 21 jre
```
sudo apt-get update && sudo apt-get install -y openjdk-21-jre-headless screen
```

## Download planetiler.jar
```
wget https://github.com/onthegomap/planetiler/releases/latest/download/planetiler.jar
```

## Create mbtiles

### Test on Monaco
```
java -Xmx1g -jar planetiler.jar --download --area=monaco
```


### Only Russia (VM with RAM > 1.5 x PBF size)
```
java -Xmx4g \
  -XX:MaxHeapFreeRatio=40 \
  -jar planetiler.jar \
  --area=russia --download \
  --download-threads=10 --download-chunk-size-mb=1000 \
  --output=output.mbtiles \
  --nodemap-type=array --storage=ram
```


### Planet if RAM > 1.5 x 
```
java -Xmx8g \
  -XX:MaxHeapFreeRatio=40 \
  -jar planetiler.jar \
  --area=planet --bounds=planet --download \
  --download-threads=10 --download-chunk-size-mb=1000 \
  --output=output.mbtiles \
  --nodemap-type=array --storage=ram
```
