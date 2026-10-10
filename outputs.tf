output "api_gateway_integrations_id" {
  description = "Map of id values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_gateway_integrations_cache_key_parameters" {
  description = "Map of cache_key_parameters values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.cache_key_parameters if v.cache_key_parameters != null && length(v.cache_key_parameters) > 0 }
}
output "api_gateway_integrations_cache_namespace" {
  description = "Map of cache_namespace values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.cache_namespace if v.cache_namespace != null && length(v.cache_namespace) > 0 }
}
output "api_gateway_integrations_connection_id" {
  description = "Map of connection_id values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.connection_id if v.connection_id != null && length(v.connection_id) > 0 }
}
output "api_gateway_integrations_connection_type" {
  description = "Map of connection_type values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.connection_type if v.connection_type != null && length(v.connection_type) > 0 }
}
output "api_gateway_integrations_content_handling" {
  description = "Map of content_handling values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.content_handling if v.content_handling != null && length(v.content_handling) > 0 }
}
output "api_gateway_integrations_credentials" {
  description = "Map of credentials values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.credentials if v.credentials != null && length(v.credentials) > 0 }
}
output "api_gateway_integrations_http_method" {
  description = "Map of http_method values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.http_method if v.http_method != null && length(v.http_method) > 0 }
}
output "api_gateway_integrations_integration_http_method" {
  description = "Map of integration_http_method values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.integration_http_method if v.integration_http_method != null && length(v.integration_http_method) > 0 }
}
output "api_gateway_integrations_integration_target" {
  description = "Map of integration_target values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.integration_target if v.integration_target != null && length(v.integration_target) > 0 }
}
output "api_gateway_integrations_passthrough_behavior" {
  description = "Map of passthrough_behavior values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.passthrough_behavior if v.passthrough_behavior != null && length(v.passthrough_behavior) > 0 }
}
output "api_gateway_integrations_region" {
  description = "Map of region values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "api_gateway_integrations_request_parameters" {
  description = "Map of request_parameters values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.request_parameters if v.request_parameters != null && length(v.request_parameters) > 0 }
}
output "api_gateway_integrations_request_templates" {
  description = "Map of request_templates values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.request_templates if v.request_templates != null && length(v.request_templates) > 0 }
}
output "api_gateway_integrations_resource_id" {
  description = "Map of resource_id values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.resource_id if v.resource_id != null && length(v.resource_id) > 0 }
}
output "api_gateway_integrations_response_transfer_mode" {
  description = "Map of response_transfer_mode values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.response_transfer_mode if v.response_transfer_mode != null && length(v.response_transfer_mode) > 0 }
}
output "api_gateway_integrations_rest_api_id" {
  description = "Map of rest_api_id values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.rest_api_id if v.rest_api_id != null && length(v.rest_api_id) > 0 }
}
output "api_gateway_integrations_timeout_milliseconds" {
  description = "Map of timeout_milliseconds values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.timeout_milliseconds if v.timeout_milliseconds != null }
}
output "api_gateway_integrations_tls_config" {
  description = "Map of tls_config values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => one(v.tls_config) if v.tls_config != null && length(v.tls_config) > 0 }
}
output "api_gateway_integrations_type" {
  description = "Map of type values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.type if v.type != null && length(v.type) > 0 }
}
output "api_gateway_integrations_uri" {
  description = "Map of uri values across all api_gateway_integrations, keyed the same as var.api_gateway_integrations"
  value       = { for k, v in aws_api_gateway_integration.api_gateway_integrations : k => v.uri if v.uri != null && length(v.uri) > 0 }
}

