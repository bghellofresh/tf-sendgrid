resource "aws_route53_record" "mx_news" {
  zone_id = "${var.zone_id}"
  name    = "news.${var.domain}"
  type    = "MX"
  ttl     = 3600

  records = ["10 mx.sendgrid.net"]
}

resource "aws_route53_record" "mx_alerts" {
  zone_id = "${var.zone_id}"
  name    = "alerts.${var.domain}"
  type    = "MX"
  ttl     = 3600

  records = ["10 mx.sendgrid.net"]
}

resource "aws_route53_record" "mx_info" {
  zone_id = "${var.zone_id}"
  name    = "info.${var.domain}"
  type    = "MX"
  ttl     = 3600

  records = ["10 mx.sendgrid.net"]
}
