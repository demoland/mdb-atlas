terraform {
  required_version = "~> 1.4.2"
  backend "remote" {
    organization = "demo-land"
    workspaces {
      name = "mdb-atlas"
    }
  }
}
