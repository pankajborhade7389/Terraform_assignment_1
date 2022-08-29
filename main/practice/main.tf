module "m1" {
  source   = "../"
  grp_name = "grp1"
  username = ["rajan", "vikash", "akarsh"]
}

module "instances" {
  source     = "../../resource"
  instance_1 = true
}