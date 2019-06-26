
provider "auth0" {
  AUTH0_DOMAIN = "${var.client_id}"
  AUTH0_CLIENT_ID = "${var.client_id}"
  AUTH0_CLIENT_SECRET = "${var.client_secret}"
}