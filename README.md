# Terraform MongoDB Atlas Cluster Creation

This Terraform code creates a MongoDB Atlas cluster in AWS with the specified configurations. The code uses the MongoDB Atlas provider version 1.8.1.

## Prerequisites

* Terraform version 1.4.5 or later
* Access to a MongoDB Atlas organization

## Configuration

The `terraform` block sets the required Terraform version and the remote backend configuration.

The `mongodbatlas` provider block configures the MongoDB Atlas provider with the public and private API keys.

The `resource` block creates a MongoDB Atlas cluster with the specified configurations, including:

* `project_id`: The unique ID of the project to create the database user.
* `name`: The name of the cluster.
* `cluster_type`: The type of the cluster. In this case, it is set to REPLICASET.
* `replication_specs`: The replication specifications for the cluster, including the number of shards and regions.
* `cloud_backup`: Enable cloud backups.
* `auto_scaling_disk_gb_enabled`: Enable auto-scaling for disk size.
* `mongo_db_major_version`: The major version of MongoDB to deploy.
* `provider_name`: The cloud provider name for the cluster.
* `disk_size_gb`: The disk size for the cluster.
* `provider_instance_size_name`: The instance size to use for the cluster.
* `labels`: Additional labels for the cluster.

The `output` block defines the connection string for the MongoDB Atlas cluster.

## Variables

The following variables can be configured to customize the MongoDB Atlas cluster creation:

* `mongodbatlas_public_key`: The public key for the MongoDB Atlas API.
* `mongodbatlas_private_key`: The private key for the MongoDB Atlas API.
* `project_id`: The unique ID of the project to create the database user.
* `provider_instance_size_name`: The instance size to use for the cluster.
* `mongo_db_major_version`: The major version of MongoDB to deploy.

## Usage

To use this Terraform code:

1. Clone the repository.
2. Configure the `variables.tf` file with your MongoDB Atlas API keys and the desired configurations.
3. Initialize the Terraform project with the command `terraform init`.
4. Preview the changes with the command `terraform plan`.
5. Apply the changes with the command `terraform apply`.

## Conclusion

This Terraform code provides a simple way to create a MongoDB Atlas cluster in AWS with the specified configurations. Use this code as a starting point to customize and automate your MongoDB Atlas deployments.
