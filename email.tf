## news
resource "aws_route53_record" "email_news_cname" {
  zone_id = "${var.zone_id}"
  name    = "email.news.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["${var.sendgrid_domainkey}"]
}

resource "aws_route53_record" "email_news_dk1_cname" {
  zone_id = "${var.zone_id}"
  name    = "s1._domainkey.news.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["s1.domainkey.${var.sendgrid_domainkey}"]
}

resource "aws_route53_record" "email_news_dk2_cname" {
  zone_id = "${var.zone_id}"
  name    = "s2._domainkey.news.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["s2.domainkey.${var.sendgrid_domainkey}"]
}

## alerts
resource "aws_route53_record" "email_alerts_cname" {
  zone_id = "${var.zone_id}"
  name    = "email.alerts.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["${var.sendgrid_domainkey}"]
}

resource "aws_route53_record" "email_alerts_dk1_cname" {
  zone_id = "${var.zone_id}"
  name    = "s1._domainkey.alerts.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["s1.domainkey.${var.sendgrid_domainkey}"]
}

resource "aws_route53_record" "email_alerts_dk2_cname" {
  zone_id = "${var.zone_id}"
  name    = "s2._domainkey.alerts.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["s2.domainkey.${var.sendgrid_domainkey}"]
}

## info
resource "aws_route53_record" "email_info_cname" {
  zone_id = "${var.zone_id}"
  name    = "email.info.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["${var.sendgrid_domainkey}"]
}

resource "aws_route53_record" "email_info_dk1_cname" {
  zone_id = "${var.zone_id}"
  name    = "s1._domainkey.info.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["s1.domainkey.${var.sendgrid_domainkey}"]
}

resource "aws_route53_record" "email_info_dk2_cname" {
  zone_id = "${var.zone_id}"
  name    = "s2._domainkey.info.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["s2.domainkey.${var.sendgrid_domainkey}"]
}
