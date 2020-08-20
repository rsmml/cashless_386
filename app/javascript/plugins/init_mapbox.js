import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

let map

const fitMapToMarkers = (map, markers) => {
  const boundsMarkers = new mapboxgl.LngLatBounds();
  markers.forEach(marker => boundsMarkers.extend([ marker.lng, marker.lat ]));
  map.fitBounds(boundsMarkers, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
     map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/sorina-duca/cke0binlu00uy19okdrk3a2sj'
    });


    const markers = JSON.parse(mapElement.dataset.markers);
    let geolocate = new mapboxgl.GeolocateControl({
          positionOptions: {
          enableHighAccuracy: true
          },
          trackUserLocation: true
          });
    map.addControl(geolocate);

    // if search returns nothing, fallback is geolocate

    if (!markers || markers.length === 0) {
    map.on('load', () => { geolocate.trigger() })

    } else {

    // if markers, put them on the map
    // map.on('load', () => { geolocate.trigger() })
        const info = document.querySelector(".vendors-container-on-map");
        markers.forEach((marker) => {


      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

      // DEACTIVATE DEFAULT MAPBOX MARKER

      // new mapboxgl.Marker()
      //   .setLngLat([ marker.lng, marker.lat ])
      //   // .setPopup(popup)
      //   .addTo(map);

        // markers display name of restaurant on zoom

         // CUSTOM MARKERS

          const customMarker = document.createElement('div');
          customMarker.className = 'marker';
          customMarker.style.backgroundcolor = '#33658A';
          customMarker.innerHTML = '<i class="fas fa-map-marker-alt" style="font-size: 25px"></i>'
          customMarker.style.color = "#33658A";
          new mapboxgl.Marker(customMarker)
            .setLngLat([ marker.lng, marker.lat ])
            // .setPopup(popup)
            .addTo(map);


        // CREATE A POPUP
      // popup._content.querySelector('.directions-button')
      //   .addEventListener('click', e => {
      //     navigator.geolocation.getCurrentPosition(position => {
      //       const start = [position.coords.longitude, position.coords.latitude];
      //       const end = [ marker.lng, marker.lat ];
      //       const boundsDirections = new mapboxgl.LngLatBounds([start,end]);
      //       map.fitBounds(boundsDirections, { padding: 30, maxZoom: 15, duration: 0 });
      //       getRoute(end, start)
      //   });
      // });

      fitMapToMarkers(map, markers);
    });

    const markerClicks = document.querySelectorAll(".mapboxgl-marker");
    // link the html markers to the elements in the markers data-set array passed by the vendors controller
    for (let i=0; i<markerClicks.length; i++) {
      let markerClick = markerClicks[i];
      let marker = markers[i];
      markerClick.addEventListener('click', e => {
        info.innerHTML = marker.infoWindow;
        info.style.display = 'flex';
        info.querySelector('.directions-button')
          .addEventListener('click', e => {
            geolocate.trigger()
            navigator.geolocation.getCurrentPosition(position => {
              const start = [position.coords.longitude, position.coords.latitude];
              const end = [ marker.lng, marker.lat ];
              const boundsDirections = new mapboxgl.LngLatBounds([start,end]);
              map.fitBounds(boundsDirections, { padding: 30, maxZoom: 15, duration: 0 });
              getRoute(end, start)
        });
      });
      });
    };

    const canvas = document.querySelector(".mapboxgl-canvas");
    // const displays = (info) => info.style.display ==='flex';
    canvas.addEventListener('click', e => {
        info.style.display = "none";
    })


    //  DECOMMENT TO HAVE search function from mapbox

    // map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
    //                                   mapboxgl: mapboxgl }));
  }
  }
};



function getRoute(end, start) {
  const url = 'https://api.mapbox.com/directions/v5/mapbox/walking/' + start[0] + ',' + start[1] + ';' + end[0] + ',' + end[1] + '?steps=true&geometries=geojson&access_token=' + mapboxgl.accessToken;

  // make an XHR request https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
  var req = new XMLHttpRequest();
  req.open('GET', url, true);
  req.onload = function() {
    var json = JSON.parse(req.response);
    var data = json.routes[0];
    var route = data.geometry.coordinates;
    var geojson = {
      type: 'Feature',
      properties: {},
      geometry: {
        type: 'LineString',
        coordinates: route
      }
    };
    // if the route already exists on the map, reset it using setData
    if (map.getSource('route')) {
      map.getSource('route').setData(geojson);
    } else { // otherwise, make a new request
      map.addLayer({
        id: 'route',
        type: 'line',
        source: {
          type: 'geojson',
          data: geojson,
        },
        layout: {
          'line-join': 'round',
          'line-cap': 'round'
        },
        paint: {
          'line-color': '#3887be',
          'line-width': 5,
          'line-opacity': 0.75
        }
      });

      map.addLayer({
        id: 'point',
        type: 'circle',
        source: {
          type: 'geojson',
          data: {
            type: 'FeatureCollection',
            features: [{
              type: 'Feature',
              properties: {},
              geometry: {
                type: 'Point',
                coordinates: start
              }
            }
            ]
          }
        },
        paint: {
          'circle-radius': 10,
          'circle-color': '#3887be'
        }
      });
    }

    // const instructions = document.getElementById('instructions');
    // const steps = data.legs[0].steps;
    // var tripInstructions = [];
    // for (var i = 0; i < steps.length; i++) {
    //   tripInstructions.push('<br><li>' + steps[i].maneuver.instruction) + '</li>';
    //   instructions.innerHTML = '<br><span class="duration">' + Math.floor(data.duration / 60) + ' min </span>' + tripInstructions;
    // }
  };
  req.send();
}


export { initMapbox };
