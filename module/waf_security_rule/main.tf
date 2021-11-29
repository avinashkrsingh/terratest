provider "incapsula" {
  api_id  = "your_api_id"
  api_key = "your_api_key"
}

variable "site_id" {
  default = "www.spicejockey-test.com"
}


resource "incapsula_security_rule_exception" "example-waf-backdoor-rule-exception" {
  site_id = var.site_id
  rule_id = "api.threats.backdoor"
  client_apps="488,123"
  countries="JM,US"
  continents="NA,AF"
  ips="1.2.3.6,1.2.3.7"
  url_patterns="EQUALS,CONTAINS"
  urls="/myurl,/myurl2"
  user_agents="myUserAgent"
  parameters="myparam"
}

resource "incapsula_security_rule_exception" "example-waf-bot_access-control-rule-exception" {
  site_id = var.site_id
  rule_id = "api.threats.bot_access_control"
  client_app_types="DataScraper,"
  ips="1.2.3.6,1.2.3.7"
  url_patterns="EQUALS,CONTAINS"
  urls="/myurl,/myurl2"
  user_agents="myUserAgent"
}

resource "incapsula_security_rule_exception" "example-waf-cross-site-scripting-rule-exception" {
  site_id = var.site_id
  rule_id = "api.threats.cross_site_scripting"
  client_apps="488,123"
  countries="JM,US"
  continents="NA,AF"
  url_patterns="EQUALS,CONTAINS"
  urls="/myurl,/myurl2"
  parameters="myparam"
}

resource "incapsula_security_rule_exception" "example-waf-ddos-rule-exception" {
  site_id = var.site_id
  rule_id = "api.threats.ddos"
  client_apps="488,123"
  countries="JM,US"
  continents="NA,AF"
  ips="1.2.3.6,1.2.3.7"
  url_patterns="EQUALS,CONTAINS"
  urls="/myurl,/myurl2"
}

resource "incapsula_security_rule_exception" "example-waf-illegal-resource-access-rule-exception" {
  site_id = var.site_id
  rule_id = "api.threats.illegal_resource_access"
  client_apps="488,123"
  countries="JM,US"
  continents="NA,AF"
  ips="1.2.3.6,1.2.3.7"
  url_patterns="EQUALS,CONTAINS"
  urls="/myurl,/myurl2"
  parameters="myparam"
}

resource "incapsula_security_rule_exception" "example-waf-remote-file-inclusion-rule-exception" {
  site_id = var.site_id
  rule_id = "api.threats.remote_file_inclusion"
  client_apps="488,123"
  countries="JM,US"
  continents="NA,AF"
  ips="1.2.3.6,1.2.3.7"
  url_patterns="EQUALS,CONTAINS"
  urls="/myurl,/myurl2"
  user_agents="myUserAgent"
  parameters="myparam"
}

resource "incapsula_security_rule_exception" "example-waf-sql-injection-rule-exception" {
  site_id = var.site_id
  rule_id = "api.threats.sql_injection"
  client_apps="488,123"
  countries="JM,US"
  continents="NA,AF"
  ips="1.2.3.6,1.2.3.7"
  url_patterns="EQUALS,CONTAINS"
  urls="/myurl,/myurl2"
}