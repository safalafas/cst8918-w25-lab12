variable "client_id" {
  type        = string
  description = "The Azure AD Application Client ID used for OIDC"
}

variable "tenant_id" {
  type        = string
  description = "The Azure AD Tenant ID used for OIDC"
}

variable "subscription_id" {
  type        = string
  description = "The Azure Subscription ID used for OIDC"
}
