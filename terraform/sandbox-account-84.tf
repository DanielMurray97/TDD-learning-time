module "sandbox_account_84" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "daniel.murray@digital.cabinet-office.gov.uk"
    AccountName  = "sandbox-account-84"

    # Syntax for top-level OU
    ManagedOrganizationalUnit = "sandbox"

    SSOUserEmail     = "daniel.murray@digital.cabinet-office.gov.uk"
    SSOUserFirstName = "Daniel"
    SSOUserLastName  = "Murray"
  }

  account_tags = {
    "ABC:CostCenter" = "ABC123"
  }

  change_management_parameters = {
    change_requested_by = "Daniel Murray"
    change_reason       = "Test account creation using the requests application"
  }

  custom_fields = {
    custom1 = ""
    custom2 = ""
  }

  account_customizations_name = "sandbox-account-84-customizations"
}
