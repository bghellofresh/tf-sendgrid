# Sendgrid Module
This module creates a valid sendgrid setup for a given domain, id and domainkey.

## Functionality
- Create Cloudfront distribution for forwarding alert.*, news.*, info.* traffic to sendgrid
- Creates MX records

## Usage
use this module after you have validated a domain with sendgrid directly and run `terraform destroy` on that module configuration. This module will recreate all the necessary records.

```
module "sendgrid" {
  source              = "./modules/sendgrid"
  domain              = "domain-without-http"
  zone_id             = "zoneid"
  sendgrid_domainkey  = "xxxxxxx"
  sendgrid_id         = "0000000"
  acm_certificate_arn = "xxxxxx"
  environment         = "live"
}
```
