resource "google_project" "project" {
  name = var.project_name
  project_id = var.project_id
  
  auto_create_network = false
}

resource "google_project_service" "services" {
  for_each = toset(var.services)
  project = var.project_id
  service = each.value

  disable_dependent_services = true

  depends_on = [google_project.project]
}
