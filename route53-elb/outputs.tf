output "public_fqdns" {
  value = "${aws_route53_record.masters_alias.name}"
}
