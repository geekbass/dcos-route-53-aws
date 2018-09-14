resource "aws_route53_record" "masters_alias" {
  zone_id = "${var.aws_zone_id}"
  name    = "${var.cluster_name}.${var.domain}"
  type    = "${var.type}"

  alias {
    name                   = "${var.aws_lb_alias_name}"
    zone_id                = "${var.aws_target_zone_id}"
    evaluate_target_health = "${var.evaluate_target_heatlh}"
  }
}
