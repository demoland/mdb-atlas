variable "mongodbatlas_public_key" {
  description = "MongoDB Atlas public key"
    type        = string
}

variable "mongodbatlas_private_key" {
  description = "MongoDB Atlas private key"
  type        = string
}

variable "project_id" {
  description = "unique ID for the project to create the database user"
  type        = string
}

variable "provider_instance_size_name" {
  description = "The instance size to use for the cluster. Defaults to M10"
  type        = string
  default     = "M30"
}
 
variable "mongo_db_major_version" {
  description = "The major version of MongoDB to deploy. Defaults to 4.2"
  type        = string
  default     = "5.0"
}
  