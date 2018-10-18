resource "aws_route53_record" "instance_public" {
  count   = "${var.num}"
  zone_id = "${var.aws_zone_id}"
  name    = "${element(var.hostname_format, count.index)}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"
  records = ["${element(var.public_records, count.index)}"]
}

resource "aws_route53_record" "instance_internal" {
  count   = "${var.num}"
  zone_id = "${var.aws_zone_id}"
  name    = "int-${element(var.hostname_format, count.index)}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"
  records = ["${element(var.private_records, count.index)}"]
}
