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
