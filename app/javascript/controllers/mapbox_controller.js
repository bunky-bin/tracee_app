import { Controller } from "@hotwired/stimulus";
import mapboxgl from "mapbox-gl"
//import style from "@mapbox/mapbox-gl-directions/src/directions_style";
//import mapboxgl, { Marker } from "mapbox-gl";
//import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder";
//import "@mapbox/mapbox-gl-directions"
//import {MapboxDirections} from "@mapbox/mapbox-gl-directions" ;


export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }
  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    const directions = new MapboxDirections({
      accessToken: 'pk.eyJ1IjoiYnVua3lib3kiLCJhIjoiY2wxcGE4bDU1MDhmYjNqb2E4aXZkam1yYSJ9.NWMx3RbJSU5N_T83-T5i8A',
      unit: 'metric',
      profile: 'mapbox/walking'


    });
      this.map = new mapboxgl.Map({
        container: this.element,
        style: "mapbox://styles/mapbox/streets-v10",
        center: [ -0.0771891, 51.5346188],
        zoom: 4

      })
      let destination = []
      console.log("hi")
      this.map.addControl(directions, 'top-left')

      this.markersValue.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.info_window) // add this
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup) // add this
          .addTo(this.map)
          destination.push(marker.lng)
          destination.push(marker.lat)
      });

      this.#fitMapToMarkers()
      this.map.on('load',  function() {
        directions.setOrigin([-0.076932,51.531181]); // can be address in form setOrigin("12, Elm Street, NY")
        directions.setDestination(destination);
        document.querySelector(".directions-control-inputs").style.display = "none";

    });

  }
    #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
    ;
    }

}
