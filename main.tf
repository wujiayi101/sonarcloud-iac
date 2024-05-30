locals {
  projects = yamldecode(file("${path.module}/projects.yml"))
}

resource "sonarcloud_project" "this" {
  for_each   = local.projects
  key        = "${var.github_org}_${each.key}"
  name       = each.key
  visibility = each.value.visibilityssd
}

resource "sonarcloud_project_main_branch" "this" {
  for_each    = local.projects
  project_key = "${var.github_org}_${each.key}"
  name        = each.value.main_branch
  depends_on  = [sonarcloud_project.this]
}
