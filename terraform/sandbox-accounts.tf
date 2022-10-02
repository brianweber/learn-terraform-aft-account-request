module "sandbox-account-0000" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "root.sandbox+0000@aws.rootaccounts.com"
    AccountName               = "sandbox-account-0000"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "root.sandbox+0000@aws.rootaccounts.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "0000"
  }

  account_tags = {
    "ABC:Environment" = "SBX"
  }

  change_management_parameters = {
    change_requested_by = "Test"
    change_reason       = "Verify Operation"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "sandbox-account-altana" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "root.sandbox+altana@aws.rootaccounts.com"
    AccountName               = "sandbox-account-altana"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "root.sandbox+altana@aws.rootaccounts.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "Altana"
  }

  account_tags = {
    "ABC:Environment" = "SBX"
  }

  change_management_parameters = {
    change_requested_by = "Altana"
    change_reason       = "Interview Requirementn"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
