// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "./application"
import DatepickerController from "./datepicker_controller"

application.register("datepicker", DatepickerController)
