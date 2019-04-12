// Azure variables

variable azu_subscription_id {}
variable azu_client_id {}
variable azu_client_secret {}
variable azu_tenant_id {}

// OCI variables

variable oci_tenancy_ocid {}
variable oci_user_ocid {}
variable oci_fingerprint {}
variable oci_private_key_path {}
variable oci_region {}

variable "oci_compartment_ocid" {}

// Google Compute Platform Variables
variable network_name {
  default     = "thenewnet"
  type        = "string"
  description = "Just the network name for the Google Compute Platform."
}

variable gcp_ip_cidr_range {
  default = "10.0.0.0/16"
  type = "string"
  description = "IP CIDR Range for Google VPC."
}

variable aws_ip_cidr_range {
  default = "10.0.1.0/24"
  type = "string"
  description = "IP CIDR Range for AWS VPC."
}

variable subnet_names {
  type = "map"

  default = {
    subnet1 = "subnetone"
    subnet2 = "subnettwo"
    subnet3 = "subnetthree"
  }
}
