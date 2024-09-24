
  module "text-sandbox-account" {
    source = "./modules/aft-account-request"
  
    control_tower_parameters = {
      AccountEmail = "janedoe@example.com"
      AccountName  = "text-sandbox-account"
  
      # Syntax for top-level OU
      ManagedOrganizationalUnit = "sandbox"
  
      SSOUserEmail     = "janedoe@example.com"
      SSOUserFirstName = "Jane" 
      SSOUserLastName  = "Doe"
    }
  
    account_tags = {
      "ABC:CostCenter"  = "undefined"
    }
  
    change_management_parameters = {
      change_requested_by = "Jane Doe"
      change_reason       = "pr test account creation"
    }
  
    custom_fields = {
      custom1 = ""
      custom2 = ""
    }
  
    account_customizations_name = "text-sandbox-account-customizations"
  }
    