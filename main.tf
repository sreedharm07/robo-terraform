module "servers" {
  for_each      = var.name

  record = var.record
  source            = "git::https://github.com/sreedharm07/terraform-module.git"
  security_id       = var.security
  name              = each.value["name"]
  instance_type     = each.value["instance_type"]
}