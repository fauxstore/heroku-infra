variable "heroku_enterprise_team" {
  description = "Name of the Enterprise Team (must already exist)"
  default = "supplyshift-sandbox"
}

variable "heroku_private_space" {
  description = "Name of the Private Space"
  default = "fauxstore-dev"
}

variable "heroku_private_region" {
  type    = string
  default = "oregon"
}

variable "name" {
  default = "fauxstore-dev"
}
