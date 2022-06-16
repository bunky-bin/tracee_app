import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

export default class extends Controller {
  static values = { apiKey: String }

  static targets = ["address"]

  connect() {
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "country,region,place,postcode,locality,neighborhood,address"
    });
    this.geocoder.addTo(this.element)

    this.geocoder.on("result", event => this.#setInputValue(event))
    this.geocoder.on("clear", () => this.#clearInputValue())
  }

  #setInputValue(event) {
    this.addressTarget.value = event.result["place_name"]
  }

  #clearInputValue() {
    this.addressTarget.value = ""
  }
}
// FROM MAPBOX CONTROLLER

// export default class extends Controller {
//   static values = {
//     apiKey: String,
//     markers: Array
//   }

//   connect() {
//     mapboxgl.accessToken = this.apiKeyValue
//     this.map = new mapboxgl.Map({
//       container: this.element,
//       style: "mapbox://styles/mapbox/streets-v10"
//     })
//     this.#addMarkersToMap()
//     this.#fitMapToMarkers()
//     this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }))
//   }

//   #addMarkersToMap() {
//     this.markersValue.forEach((marker) => {
//       const popup = new mapboxgl.Popup().setHTML(marker.info_window)
//       new mapboxgl.Marker()
//         .setLngLat([ marker.lng, marker.lat ])
//         .setPopup(popup)
//         .addTo(this.map)
//     });
//   }

//   #fitMapToMarkers() {
//     const bounds = new mapboxgl.LngLatBounds()
//     this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
//     this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
//   }
// }


// DOES THIS GO HERE OR IN MAPBOX_CONTROLLER

mapboxgl.accessToken = 'pk.eyJ1IjoidGxhLXZlbGxlIiwiYSI6ImNsMXBkMDdueDBiaGwzb211Z2FlNXVueWwifQ.OOXcEebwEtmLujTGMFyTeg';
const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11',
    center: [12.550343, 55.665957],
    zoom: 8
});

// Create a default Marker and add it to the map.
const marker1 = new mapboxgl.Marker()
    .setLngLat([12.554729, 55.70651])
    .addTo(map);

// Create a default Marker, colored black, rotated 45 degrees.
const marker2 = new mapboxgl.Marker({ color: 'black', rotation: 45 })
    .setLngLat([12.65147, 55.608166])
    .addTo(map);

    // GET FROM A-B WITH DIRECTIONS:
    mapboxgl.accessToken = 'pk.eyJ1IjoidGxhLXZlbGxlIiwiYSI6ImNsMXBkMDdueDBiaGwzb211Z2FlNXVueWwifQ.OOXcEebwEtmLujTGMFyTeg';
    const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v11',
        center: [-79.4512, 43.6568],
        zoom: 13
    });

    map.addControl(
        new MapboxDirections({
            accessToken: mapboxgl.accessToken
        }),
        'top-left'
    );
