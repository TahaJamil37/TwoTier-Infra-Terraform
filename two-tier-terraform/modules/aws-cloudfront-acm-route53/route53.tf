

# AWS Route53 record resource for the apex domain (root domain) with an "A" type record. The record uses an alias to the AWS CloudFront distribution with the specified domain name and hosted zone ID. The target health evaluation is set to false.
resource "aws_route53_record" "apex" {
  zone_id = data.aws_route53_zone.zone.id
  name    = var.domain-name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.cdn-web-elb-distribution.domain_name
    zone_id                = aws_cloudfront_distribution.cdn-web-elb-distribution.hosted_zone_id
    evaluate_target_health = false
  }
}