provider "google" {
  credentials = "${file("../account.json")}"
  project = "even-boulder-236416"
  region = "europe-west4-a"
}

provider "aws" {
  region = "eu-west-1"
}

provider "azurerm" {
  subscription_id = "${var.azu_subscription_id}"
  client_id = "${var.azu_client_id}"
  client_secret = "${var.azu_client_secret}"
  tenant_id = "${var.azu_tenant_id}"
}

provider "oci" {
  tenancy_ocid = "${var.oci_tenancy_ocid}"
  user_ocid = "${var.oci_user_ocid}"
  fingerprint = "${var.oci_fingerprint}"
  private_key_path = "${var.oci_private_key_path}"
  region = "${var.oci_region}"
}
