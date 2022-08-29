//= require active_admin/base

// app/javascript/controllers/index.js

import { Application } from "stimulus"
import Carousel from "stimulus-carousel"

const application = Application.start()
application.register("carousel", Carousel)
