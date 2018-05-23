# Sendgrid Module
This module creates a valid sendgrid setup for a given domain, id and domainkey.

## Functionality
- Create Cloudfront distribution for forwarding alert.*, news.*, info.* traffic to sendgrid
- Provide a boolean parameter for validation_mode
- if validation_mode is true then CNAME records point to sendgrid.net
- if validation_mode is false then the CNAME records point to the sendgrid CDN for the given country

## Usage
```
module "sendgrid" {
  source             = "./modules/sendgrid"
  domain             = "domain-without-http"
  zone_id            = "zoneid"
  sendgrid_domainkey = "xxxxxxx"
  sendgrid_id        = "0000000"
  validation_mode    = false
}
```
