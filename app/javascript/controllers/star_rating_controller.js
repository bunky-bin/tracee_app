// import { Controller } from "stimulus"

// export default class extends Controller {
//   static targets = [ "" ]

//   connect() {
//     console.log('Hello, Stimulus!')
//   }
// }


import { Controller } from "@hotwired/stimulus"
import StarRating from "star-rating.js"

export default class extends Controller {
  connect() {
    new StarRating(this.element)
  }
}
