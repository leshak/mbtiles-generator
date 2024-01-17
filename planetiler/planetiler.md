# Planetiler
https://github.com/onthegomap/planetiler

## Install Java 21 jre
```
sudo apt-get update && sudo apt-get install -y openjdk-21-jre-headless screen
```

## Create mbtiles

### Test on Monaco
```
wget https://github.com/onthegomap/planetiler/releases/latest/download/planetiler.jar
java -Xmx1g -jar planetiler.jar --download --area=monaco
```


### Only Russia (VM with 40GB)
```
```
