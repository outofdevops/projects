locals {
    projects_file         = "projects.yaml"
    projects_file_content = fileexists(local.projects_file) ? file(local.projects_file) : "NoSettingsFileFound: true"
    projects_config  = yamldecode(local.projects_file_content)
    services = [
        "cloudbilling.googleapis.com",
        "iam.googleapis.com",
        "cloudbuild.googleapis.com",
        "cloudresourcemanager.googleapis.com",
        "compute.googleapis.com",
        "container.googleapis.com",
        "dns.googleapis.com",
        "logging.googleapis.com",
        "sql-component.googleapis.com",
    ]
}

module "projects" {
  source = "./project"
  
  for_each = {for project in local.projects_config.projects:  project.name => project}

  project_name = each.value.name
  project_id   = each.value.id
  services     = local.services
}
