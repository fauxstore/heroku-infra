resource "heroku_app" "deals-service" {
  name             = "${var.name}--deals"
  space            = heroku_space.default.name
  internal_routing = true

  organization {
    name = var.heroku_enterprise_team
  }

  region = var.heroku_private_region
}

resource "heroku_addon" "deals-service-db" {
  app  = heroku_app.data-app.name
  plan = "heroku-postgresql:hobby-basic"
}

resource "heroku_addon_attachment" "deals-service-db-attachment" {
  app_id  = heroku_app.deals-service.id
  addon_id = heroku_addon.deals-service-db.id
}

resource "heroku_formation" "deals-service" {
    app = heroku_app.deals-service.name
    type = "web"
    quantity = 1
    size = "private-s"
}