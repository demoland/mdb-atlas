resource "mongodbatlas_cluster" "mdb-hashi" {
  project_id   = var.project_id
  name         = "mdb-hashi"
  cluster_type = "REPLICASET"
  replication_specs {
    num_shards = 1
    regions_config {
      region_name     = "us-east-2"
      electable_nodes = 3
      priority        = 7
      read_only_nodes = 0
    }
  }
  cloud_backup = true
  auto_scaling_disk_gb_enabled = true
  mongo_db_major_version       = "4.2"

  # Provider Settings "block"
  provider_name               = "AWS"
  disk_size_gb                = 100
  provider_instance_size_name =  var.provider_instance_size_name
}
