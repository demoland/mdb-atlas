terraform {
  required_version = "~> 1.4.5"
  backend "remote" {
    organization = "demo-land"
    workspaces {
      name = "mdb-atlas"
    }
  }
}
