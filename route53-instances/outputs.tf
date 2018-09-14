output "public_fqdns" {
  value = "${join("\n", aws_route53_record.instance_public.*.name)}"
}

output "private_fqdns" {
  value = "${join("\n", aws_route53_record.instance_internal.*.name)}"
}
