Шаблон предназачен для быстрой настройки Tilemaker v3.x (https://github.com/systemed/tilemaker) на сервере, для конвертации OSM PBF файла в mbtiles.

Выгружаются названия на Русском (+ английский)


Загружаем
```
git clone https://github.com/leshak/tilemaker-template.git && cd tilemaker-template/tilemaker
```

Загружаем ресурсы
```
./resources.sh
```


Для тестирования загружаем с Geofabric только "Центральный федеральный округ" (~736 MB)
```
wget -O source.osm.pbf https://download.geofabrik.de/russia/central-fed-district-latest.osm.pbf
```

Вся Россия (~3.4GB)
```
wget -O source.osm.pbf https://download.geofabrik.de/russia-latest.osm.pbf
```


Вся планета (~73G)
```
wget -O source.osm.pbf https://download.bbbike.org/osm/planet/planet-latest.osm.pbf
```

Запускаем конвертацию
```
./build.sh
```

Для полной планеты (на 14.01.2024) на VM:
```
48 cores + 512 GB + SSD
```
реальное потребление памяти было в районе 350..410GB

время конвертирования:
```
real	84m9.543s
user	3596m55.728s
sys     109m37.462s
```

Размер - mbtiles: 97G
