import mapboxgl from 'mapbox-gl';
// IMPORTER LE CSS (CE QUE J'AURAIS JAMAIS PENSE A FAIRE) :
import 'mapbox-gl/dist/mapbox-gl.css';

const mapElement = document.getElementById('map');

const initMapbox = () => {

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const coordinates = JSON.parse(mapElement.dataset.coordinates)
    console.log(coordinates)
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      // center: [115.270385511912, -8.4560181],
      center: [coordinates.long, coordinates.lat],
      zoom: 6
    });
  }
};

export { initMapbox };
