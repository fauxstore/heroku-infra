terraform {
  backend "pg" {
  }
}

provider "heroku" {
}

resource "heroku_space" "default" {
  name         = var.heroku_private_space
  organization = var.heroku_enterprise_team
  region = var.heroku_private_region
}

resource "heroku_app" "storefront" {
  name             = "${var.name}--storefront"
  space            = heroku_space.default.name
  internal_routing = false

  organization {
    name = var.heroku_enterprise_team
  }

  region = var.heroku_private_region
}


