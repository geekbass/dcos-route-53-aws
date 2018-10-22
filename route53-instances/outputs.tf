output "public_fqdns" {
  description = "List of Public FQDNs"
  value       = "${join("\n", aws_route53_record.instance_public.*.name)}"
}

output "private_fqdns" {
  description = "List of Private FQDNs"
  value       = "${join("\n", aws_route53_record.instance_internal.*.name)}"
}

output "private_ips" {
  description = "List of Private IPs"
  value       = "${join("\n  - ", flatten(list(aws_route53_record.instance_public.*.records)))}"
}

output "public_ips" {
  description = "List of Public IPs"
  value       = "${join("\n  - ", flatten(list(aws_route53_record.instance_internal.*.records)))}"
}
