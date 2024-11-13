module "doks" {
  # When using these modules in your own templates, you will need to use a Git URL with a ref attribute that pins you
  # to a specific version of the modules, such as the following example:
  source = "../.."

  cluster_name       = "secretstartups-example"
  kubernetes_version = "1.31"
  ha                 = "true"
}
