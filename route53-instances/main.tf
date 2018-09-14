resource "aws_route53_record" "instance_public" {
  count   = "${var.num}"
  zone_id = "${var.aws_zone_id}"
  name    = "${format(var.hostname_format, (count.index + 1), var.domain, var.cluster_name)}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"
  records = ["${var.public_records}"]
}

resource "aws_route53_record" "instance_internal" {
  count   = "${var.num}"
  zone_id = "${var.aws_zone_id}"
  name    = "int-${format(var.hostname_format, (count.index + 1), var.domain, var.cluster_name)}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"
  records = ["${var.private_records}"]
}
