output "public_fqdns" {
  description = "List of Public FQDNs"
  #value = "${join("\n", aws_route53_record.instance_public.*.name)}"
  value = "${join("\n", aws_route53_record.instance_public.*.name)}"
}

output "private_fqdns" {
  description = "List of Private FQDNs"
  #value = "${join("\n", aws_route53_record.instance_internal.*.name)}"
  value = "${join("\n", aws_route53_record.instance_internal.*.name)}"
}
