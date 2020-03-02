Deutschland: 3600000000+51477


Hessen: 3600000000+62650
Frankfurt 3600000000+62400


## Downloads

### Deutschland
wget -O zugstrecken.osm "https://overpass-api.de/api/interpreter?data=[timeout:360];(relation["route"="tracks"](area:3600051477);node["railway"="station"](area:3600051477);node["railway"="halt"](area:3600051477););out body;>;out skel qt;"

# Frankfurt
wget -O frankfurt.osm "https://overpass-api.de/api/interpreter?data=[timeout:360];(relation["route"="tracks"](area:3600062400);node["railway"="station"](area:3600062400);node["railway"="halt"](area:3600062400););out body;>;out skel qt;"
