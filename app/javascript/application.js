// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

// If using flatpickr
import flatpickr from "flatpickr";
import { Application } from "@hotwired/stimulus"
import "./controllers"

const application = Application.start()
window.Stimulus = application
