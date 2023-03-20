terraform {
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
      version = "1.8.1"
    }
  }
}

provider "mongodbatlas" {
  # Configuration options
  public_key = var.mongodbatlas_public_key
  private_key  = var.mongodbatlas_private_key
}
