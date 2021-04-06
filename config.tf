terraform {
  backend "remote" {

    workspaces {
      name = "projects"
    }
    
  }
}
