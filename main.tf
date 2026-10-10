resource "aws_api_gateway_integration" "api_gateway_integrations" {
  for_each = var.api_gateway_integrations

  http_method             = each.value.http_method
  resource_id             = each.value.resource_id
  rest_api_id             = each.value.rest_api_id
  type                    = each.value.type
  response_transfer_mode  = each.value.response_transfer_mode
  request_templates       = each.value.request_templates
  request_parameters      = each.value.request_parameters
  region                  = each.value.region
  passthrough_behavior    = each.value.passthrough_behavior
  integration_target      = each.value.integration_target
  credentials             = each.value.credentials
  timeout_milliseconds    = each.value.timeout_milliseconds
  content_handling        = each.value.content_handling
  connection_type         = each.value.connection_type
  connection_id           = each.value.connection_id
  cache_namespace         = each.value.cache_namespace
  cache_key_parameters    = each.value.cache_key_parameters
  integration_http_method = each.value.integration_http_method
  uri                     = each.value.uri

  dynamic "tls_config" {
    for_each = each.value.tls_config != null ? [each.value.tls_config] : []
    content {
      insecure_skip_verification = tls_config.value.insecure_skip_verification
    }
  }
}

