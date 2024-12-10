import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      enableTime: false,
      dateFormat: "Y-m-d",
      minDate: "today",
      altInput: true,
      altFormat: "F j, Y"
    })
  }
}
