provider "incapsula" {
  api_id  = "your_api_id"
  api_key = "your_api_key"
}

variable "site_id" {
  default = "www.spicejockey-test.com"
}


resource "incapsula_waf_security_rule" "example-waf-backdoor-rule" {
  site_id = var.site_id
  rule_id = "api.threats.backdoor"
  security_rule_action = "api.threats.action.quarantine_url" # (api.threats.action.quarantine_url (default) | api.threats.action.alert | api.threats.action.disabled | api.threats.action.quarantine_url)
}

resource "incapsula_waf_security_rule" "example-waf-cross-site-scripting-rule" {
  site_id = ivar.site_id
  rule_id = "api.threats.cross_site_scripting"
  security_rule_action = "api.threats.action.block_ip" # (api.threats.action.disabled | api.threats.action.alert | api.threats.action.block_request | api.threats.action.block_user | api.threats.action.block_ip)
}

resource "incapsula_waf_security_rule" "example-waf-illegal-resource-rule" {
  site_id = var.site_id
  rule_id = "api.threats.illegal_resource_access"
  security_rule_action = "api.threats.action.block_ip" # (api.threats.action.disabled | api.threats.action.alert | api.threats.action.block_request | api.threats.action.block_user | api.threats.action.block_ip)
}

resource "incapsula_waf_security_rule" "example-waf-remote-file-inclusion-rule" {
  site_id = var.site_id
  rule_id = "api.threats.remote_file_inclusion"
  security_rule_action = "api.threats.action.block_ip" # (api.threats.action.disabled | api.threats.action.alert | api.threats.action.block_request | api.threats.action.block_user | api.threats.action.block_ip)
}

resource "incapsula_waf_security_rule" "example-waf-sql-injection-rule" {
  site_id = var.site_id
  rule_id = "api.threats.sql_injection"
  security_rule_action = "api.threats.action.block_ip" # (api.threats.action.disabled | api.threats.action.alert | api.threats.action.block_request | api.threats.action.block_user | api.threats.action.block_ip)
}

resource "incapsula_waf_security_rule" "example-waf-bot-access-control-rule" {
  site_id = var.site_id
  rule_id = "api.threats.bot_access_control"
  block_bad_bots = "true" # true | false (optional, default: true)
  challenge_suspected_bots = "true" # true | false (optional, default: true)
}

resource "incapsula_waf_security_rule" "example-waf-ddos-rule" {
  site_id = var.site_id
  rule_id = "api.threats.ddos"
  activation_mode = "api.threats.ddos.activation_mode.on" # (api.threats.ddos.activation_mode.auto | api.threats.ddos.activation_mode.off | api.threats.ddos.activation_mode.on)
  ddos_traffic_threshold = "5000" # valid values are 10, 20, 50, 100, 200, 500, 750, 1000, 2000, 3000, 4000, 5000
}