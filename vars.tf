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
