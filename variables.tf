variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "saml_provider_arn" {
  description = "The ARN of the IAM SAML identity provider."
  type        = string
}

variable "tls_subject_common_name" {
  description = "The common_name for subject for which a certificate is being requested. RFC5280."
  type        = string
}

variable "endpoint_client_cidr_block" {
  description = "The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater."
  type        = string
  default     = "10.100.100.0/24"
}

variable "endpoint_name" {
  description = "Name to be used on the Client VPN Endpoint"
  type        = string
}

variable "endpoint_subnets" {
  description = "List of IDs of endpoint subnets for network association"
  type        = list(string)
}

variable "endpoint_vpc_id" {
  description = "VPC where the VPN will be connected."
  type        = string
}

variable "authorization_rules" {
  description = "Map containing authorization rule configuration. rule_name = \"target_network_cidr, access_group_id\" ."
  type        = map(string)
  default     = {}
}

variable "authorization_rules_all_groups" {
  description = "Map containing authorization rule configuration with authorize_all_groups=true. rule_name = \"target_network_cidr\" ."
  type        = map(string)
  default     = {}
}

variable "cloudwatch_log_group_name_prefix" {
  description = "Specifies the name prefix of CloudWatch Log Group for VPC flow logs."
  type        = string
  default     = "/aws/client-vpn-endpoint/"
}

variable "cloudwatch_log_group_retention_in_days" {
  description = "Specifies the number of days you want to retain log events in the specified log group for VPN connection logs."
  type        = number
  default     = 30
}

variable "tls_validity_period_hours" {
  description = "Specifies the number of hours after initial issuing that the certificate will become invalid."
  type        = number
  default     = 47400
}

