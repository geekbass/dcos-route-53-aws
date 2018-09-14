module "route53" {
  source = "./route53-zone/"
  name   = "testing.mesosphere.re"
}

output "zone_id" {
  value = "${module.route53.zone_id}"
}
