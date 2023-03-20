output "standard" {
    value = mongodbatlas_cluster.mdb_hashi.connection_strings[0].standard
}