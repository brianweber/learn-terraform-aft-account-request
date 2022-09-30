module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "root.sandbox+altana@aws.rootaccounts.com"
    AccountName               = "Sandbox-Altana"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "root.sandbox+altana@aws.rootaccounts.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "Altana"
  }

  account_tags = {
    "Scope" = "Interview"
  }

  change_management_parameters = {
    change_requested_by = "Altana"
    change_reason       = "Technical Coding Exercise"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
