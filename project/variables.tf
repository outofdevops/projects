variable "project_name" {
    description = "The name of the project"
}

variable "project_id" {
    description = "The ID of the project"
}

variable "services" {
  type = list(string)
  description = "A list of google services to enable for the given project"
}
