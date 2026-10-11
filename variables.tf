variable "federated_settings_org_configs" {
  description = <<EOT
Map of federated_settings_org_configs, attributes below
Required:
    - domain_restriction_enabled
    - federation_settings_id
    - org_id
Optional:
    - data_access_identity_provider_ids
    - domain_allow_list
    - identity_provider_id
    - post_auth_role_grants
EOT

  type = map(object({
    domain_restriction_enabled        = bool
    federation_settings_id            = string
    org_id                            = string
    data_access_identity_provider_ids = optional(list(string))
    domain_allow_list                 = optional(list(string))
    identity_provider_id              = optional(string)
    post_auth_role_grants             = optional(list(string))
  }))
}

