resource "random_pet" "this" {
  length = 2
}

module "instance" {
  source           = "git::git@github.com:Eqix-ProjectX/terraform-metal-device"
  for_each         = var.metal_cluster
  hostname         = "${random_pet.this.id}-${each.value.metro}"
  project_id       = var.project_id
  plan             = each.value.plan
  metro            = each.value.metro
  operating_system = each.value.operating_system
  region           = each.value.region
}
