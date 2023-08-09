module "servers" {
  for_each      = var.name


  source            = "git::https://github.com/sreedharm07/terraform-module.git"
  security_id       = var.sequrity
  name              = each.value["name"]
  instance_type     = each.value["instance_type"]
}