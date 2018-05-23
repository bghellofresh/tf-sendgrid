variable "domain" {
  description = "Top Level Domain"
  type        = "string"
}

variable "zone_id" {
  description = "Hosting Zone ID"
  type        = "string"
}

variable "sendgrid_domainkey" {
  description = "The CNAME for sendgrid in form: uxxxxx.wxxx.sendgrid.net"
  type        = "string"
}

variable "sendgrid_id" {
  description = "The ID for the domain in sendgrid"
  type        = "string"
}

variable "validation_mode" {
  description = "Toggle for CDN vs simple CNAME records for validating new domains"
  type        = "boolean"
}

variable "acm_certificate_arn" {
  description = "The ACM ARN value of the SSL Certificate to use for this domain"
  type        = "string"
}

variable "environment" {
  description = "The environment to create the values for"
  type        = "string"
}

variable "additional_aliases" {
  description = "Sendgrid domain names added as aliases to the CDN"
  type        = "list"
  default     = []
}
