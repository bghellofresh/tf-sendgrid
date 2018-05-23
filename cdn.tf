resource "aws_cloudfront_distribution" "cdn_sendgrid" {
  comment = "sendgrid ${var.environment} ${var.domain}"
  aliases = ["${var.additional_aliases}", "click-${var.environment}.${var.domain}"]

  origin {
    domain_name = "sendgrid.net"
    origin_id   = "sendgrid_${var.environment}_${var.domain}"

    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "https-only"
      origin_ssl_protocols   = ["TLSv1", "TLSv1.1", "TLSv1.2"]
    }
  }

  enabled         = true
  is_ipv6_enabled = true

  web_acl_id = "0ea92e15-6c6f-4e3a-ba33-9e6c8ab6f179"

  viewer_certificate {
    acm_certificate_arn      = "${var.acm_certificate_arn}"
    minimum_protocol_version = "TLSv1"
    ssl_support_method       = "sni-only"
  }

  custom_error_response {
    error_code            = 400
    error_caching_min_ttl = 1
  }

  custom_error_response {
    error_code            = 403
    error_caching_min_ttl = 1
  }

  custom_error_response {
    error_code            = 404
    error_caching_min_ttl = 1
  }

  custom_error_response {
    error_code            = 405
    error_caching_min_ttl = 1
  }

  custom_error_response {
    error_code            = 500
    error_caching_min_ttl = 1
  }

  custom_error_response {
    error_code            = 501
    error_caching_min_ttl = 1
  }

  custom_error_response {
    error_code            = 502
    error_caching_min_ttl = 1
  }

  custom_error_response {
    error_code            = 503
    error_caching_min_ttl = 1
  }

  custom_error_response {
    error_code            = 504
    error_caching_min_ttl = 1
  }

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD", "OPTIONS"]
    cached_methods   = ["GET", "HEAD", "OPTIONS"]
    target_origin_id = "sendgrid_${var.environment}_${var.domain}"
    compress         = true

    forwarded_values {
      query_string = true
      headers      = ["Host", "Origin", "Referer"]

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 86400               # 1 day
    max_ttl                = 864000              # 10 day
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
}

output "sendgrid_cloudfront_distribution_id" {
  value = "${aws_cloudfront_distribution.cdn_sendgrid.id}"
}

output "sendgrid_cloudfront_distribution_domain_name" {
  value = "${aws_cloudfront_distribution.cdn_sendgrid.domain_name}"
}
