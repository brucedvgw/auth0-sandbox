resource "auth0_client" "my_app_client" {
  name            = "ClickOps (Managed by Terraform)"
  description     = "Example Application Loooooong Description"
  app_type        = "spa" # Native Apps, Single-Page Apps, Machine to Machine Apps
  is_first_party  = true # https://auth0.com/docs/api-auth/user-consent
  oidc_conformant = true # https://auth0.com/docs/api-auth/tutorials/adoption
  callbacks       = ["https://example.com/callback"]
  allowed_origins = ["https://example.com"]
  web_origins     = ["https://example.com"]
  grant_types     = ["authorization_code", "http://auth0.com/oauth/grant-type/password-realm", "implicit", "refresh_token"] #https://auth0.com/docs/applications/reference/grant-types-available

  jwt_configuration = {
    lifetime_in_seconds = 360000
    secret_encoded      = false
    alg                 = "RS256"
  }

  custom_login_page_on = "true"
}
