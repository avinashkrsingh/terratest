provider "incapsula" {
  api_id  = "your_api_id"
  api_key = "your_api_key"
}

resource "incapsula_site" "incapsula-site" {
  domain                 = "www.spicejockey.com"
  account_id             = 1014181
  ref_id                 = "12345"
  send_site_setup_emails = "true"
  site_ip                = "1.2.3.4"
  force_ssl              = "true"
  data_storage_region    = "US"
  active                  = "bypass"
  ignore_ssl              = "true"
  acceleration_level      = "none"
  seal_location           = "api.seal_location.bottom_right"
  domain_redirect_to_full = "true"
  remove_ssl              = "false"

}

resource "incapsula_custom_certificate" "custom-certificate" {
  site_id     = incapsula_site.incapsula-site.id
  certificate = file("path/to/your/cert.crt")
  private_key = file("path/to/your/private_key.key")
  passphrase  = "yourpassphrase"
}



resource "incapsula_data_center" "incapsula-data-center-test" {
  site_id        = incapsula_site.incapsula-site.id
  name           = "Example data center test"
  server_address = "8.8.4.8"
  is_content     = "true"
}

resource "incapsula_data_center" "example-data-center" {
  site_id        = incapsula_site.incapsula-site.id
  name           = "Example data center"
  server_address = "8.8.4.4"
  is_content     = "true"
}

# Data Center Servers
resource "incapsula_data_center_server" "example-data-center-server" {
  dc_id          = incapsula_data_center.incapsula-data-center.id
  site_id        = incapsula_site.incapsula-site.id
  server_address = "4.4.4.4"
  is_standby     = "false"
}
