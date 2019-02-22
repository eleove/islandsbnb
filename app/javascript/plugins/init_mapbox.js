import mapboxgl from 'mapbox-gl';
// IMPORTER LE CSS (CE QUE J'AURAIS JAMAIS PENSE A FAIRE) :
import 'mapbox-gl/dist/mapbox-gl.css';

const mapElement = document.getElementById('map');

const initMapbox = () => {
  let map;

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const coordinates = JSON.parse(mapElement.dataset.coordinates)

    if (coordinates.length == 1) {
      map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10',
        center: [coordinates[0].long, coordinates[0].lat],
        zoom: 6
      });
    } else {
      map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10',
        zoom: 1.3
      });
    }

    coordinates.forEach((coordinate) => {
      // const element = document.createElement('div');
      // element.className = 'coordinate';
      // element.style.backgroundImage = `url('${coordinate.image_url}')`;
      // element.style.backgroundSize = 'contain';
      // element.style.width = '25px';
      // element.style.height = '25px';
      const popup = new mapboxgl.Popup().setHTML(coordinate.infoWindow);
      new mapboxgl.Marker(coordinate)
        .setLngLat([coordinate.long, coordinate.lat])
        .setPopup(popup)
        // .setHTML(element.infoWindow.content)
        .addTo(map);
    });
  }
};

export { initMapbox };
