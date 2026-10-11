resource "mongodbatlas_federated_settings_org_config" "federated_settings_org_configs" {
  for_each = var.federated_settings_org_configs

  domain_restriction_enabled        = each.value.domain_restriction_enabled
  federation_settings_id            = each.value.federation_settings_id
  org_id                            = each.value.org_id
  data_access_identity_provider_ids = each.value.data_access_identity_provider_ids
  domain_allow_list                 = each.value.domain_allow_list
  identity_provider_id              = each.value.identity_provider_id
  post_auth_role_grants             = each.value.post_auth_role_grants
}

