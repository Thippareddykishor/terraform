module "null_resources" {
  source = "./null-resource-module"
}

module "resource_count" {
  source = "./resource_count"
  input = module.null_resources.resources
}