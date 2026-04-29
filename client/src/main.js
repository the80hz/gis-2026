import 'ol/ol.css';
import Map from 'ol/Map';
import View from 'ol/View';
import TileLayer from 'ol/layer/Tile';
import ImageLayer from 'ol/layer/Image';
import OSM from 'ol/source/OSM';
import ImageWMS from 'ol/source/ImageWMS';
import { fromLonLat } from 'ol/proj';
import './style.css';

const map = new Map({
  target: 'map',
  layers: [
    new TileLayer({
      source: new OSM(),
    }),
    new ImageLayer({
      source: new ImageWMS({
        url: 'http://localhost:8080/geoserver/gis/wms',
        params: {
          LAYERS: 'gis:buildings',
          TILED: true,
        },
        ratio: 1,
        serverType: 'geoserver',
      }),
    }),
  ],
  view: new View({
    center: fromLonLat([50.1287, 53.524]),
    zoom: 16,
  }),
});

window.map = map;
