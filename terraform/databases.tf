resource "heroku_app" "data-app" {
  name             = "${var.name}--databases"

  organization {
    name = var.heroku_enterprise_team
  }

  region = "us"
}