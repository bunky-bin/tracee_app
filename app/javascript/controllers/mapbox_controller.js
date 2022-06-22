import { Controller } from "@hotwired/stimulus";
import mapboxgl, { Marker } from "mapbox-gl";
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder";
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
        zoom: 11

      })
      let destination = []
      this.map.addControl(directions, 'top-left')
      this.markersValue.forEach((marker) => {

        const popup = new mapboxgl.Popup().setHTML(marker) // add this
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup) // add this
          .addTo(this.map)
          destination.push(marker.lng)
          destination.push(marker.lat)
          console.log(destination)
      });

      this.#fitMapToMarkers()
      this.map.on('load',  function() {
        directions.setOrigin([-0.076932,51.531181]); // can be address in form setOrigin("12, Elm Street, NY")
        directions.setDestination(destination);
          console.log(this.markersValue);
    })

   ;
  }
    #addMarkersToMap() {
      this.markersValue.forEach((marker) => {

        const popup = new mapboxgl.Popup().setHTML(marker) // add this
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup) // add this
          .addTo(this.map)
          console.log( marker);
          const targetBox = document.querySelector("div.mapboxgl-ctrl-geocoder, input ")
          targetBox.value = "-0.08502,51.53132"
          console.log(targetBox)


      });
    }
    #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })

    ;
    }


    // #fitDirections(){

    //    mapboxgl.accessToken = 'pk.eyJ1Ijoic2ltbzg3cGljY29sbyIsImEiOiJjbDEzeTlsOGwwbHZiM2RzMHU2N3JuYjE2In0.Nf2_CCxhVndZOKw_1ItIsg';
    // const map = new mapboxgl.Map({
    // container: 'map',
    // style: 'mapbox://styles/mapbox/streets-v11',
    // center: [ -0.0771891, 51.5346188],
    // zoom: 13

    // });
    // map.addControl(
    // new MapboxDirections({
    // accessToken: mapboxgl.accessToken
    // }),
    // 'top-left'
    // );
 // }
}
