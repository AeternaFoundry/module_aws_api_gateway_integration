variable "api_gateway_integrations" {
  description = <<EOT
Map of api_gateway_integrations, attributes below
Required:
    - http_method
    - resource_id
    - rest_api_id
    - type
Optional:
    - cache_key_parameters
    - cache_namespace
    - connection_id
    - connection_type
    - content_handling
    - credentials
    - integration_http_method
    - integration_target
    - passthrough_behavior
    - region
    - request_parameters
    - request_templates
    - response_transfer_mode
    - timeout_milliseconds
    - uri
    - tls_config (block):
        - insecure_skip_verification (optional)
EOT

  type = map(object({
    http_method             = string
    resource_id             = string
    rest_api_id             = string
    type                    = string
    response_transfer_mode  = optional(string)
    request_templates       = optional(map(string))
    request_parameters      = optional(map(string))
    region                  = optional(string)
    passthrough_behavior    = optional(string)
    integration_target      = optional(string)
    credentials             = optional(string)
    timeout_milliseconds    = optional(number)
    content_handling        = optional(string)
    connection_type         = optional(string)
    connection_id           = optional(string)
    cache_namespace         = optional(string)
    cache_key_parameters    = optional(set(string))
    integration_http_method = optional(string)
    uri                     = optional(string)
    tls_config = optional(object({
      insecure_skip_verification = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_gateway_integrations : (
        v.passthrough_behavior == null || (contains(["WHEN_NO_MATCH", "WHEN_NO_TEMPLATES", "NEVER"], v.passthrough_behavior))
      )
    ])
    error_message = "must be one of: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, NEVER"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

