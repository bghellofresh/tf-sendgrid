resource "aws_route53_record" "click_news_sg_cname" {
  zone_id = "${var.zone_id}"
  name    = "click.news.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["${ var.validation_mode == true ? "sendgrid.net" : var.cdn_record }"]
}

resource "aws_route53_record" "click_info_sg_cname" {
  zone_id = "${var.zone_id}"
  name    = "click.info.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["${ var.validation_mode == true ? "sendgrid.net" : var.cdn_record }"]
}

resource "aws_route53_record" "click_alert_sg_cname" {
  zone_id = "${var.zone_id}"
  name    = "click.alerts.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["${ var.validation_mode == true ? "sendgrid.net" : var.cdn_record }"]
}

resource "aws_route53_record" "click_news_sg_id_cname" {
  zone_id = "${var.zone_id}"
  name    = "${var.sendgrid_id}.news.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["${ var.validation_mode == true ? "sendgrid.net" : var.cdn_record }"]
}

resource "aws_route53_record" "click_info_sg_id_cname" {
  zone_id = "${var.zone_id}"
  name    = "${var.sendgrid_id}.info.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["${ var.validation_mode == true ? "sendgrid.net" : var.cdn_record }"]
}

resource "aws_route53_record" "click_alerts_sg_id_cname" {
  zone_id = "${var.zone_id}"
  name    = "${var.sendgrid_id}.alerts.${var.domain}"
  type    = "CNAME"
  ttl     = 30

  records = ["${ var.validation_mode == true ? "sendgrid.net" : var.cdn_record }"]
}
