resource "heroku_app" "storefront" {
  name             = "${var.name}--storefront"
  space            = heroku_space.default.name
  internal_routing = false

  config_vars = {
    DEALS_GATEWAY_BASE_URL = "http://${heroku_app.deals-service.name}.herokuapp.com"
    DEBUG = "*"
  }

  organization {
    name = var.heroku_enterprise_team
  }

  region = var.heroku_private_region
}

resource "heroku_formation" "storefront" {
    app = heroku_app.storefront.name
    type = "web"
    quantity = 1
    size = "private-s"
}