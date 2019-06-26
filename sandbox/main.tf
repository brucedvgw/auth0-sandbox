terraform {
  required_version = ">= 0.11"
  backend "remote" {
    organization = "VGW"
    workspaces {
      name = "auth0-pok-sandbox"
    }
  }
}