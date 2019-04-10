provider "google" {
  credentials = "${file("../account.json")}"
  project = "even-boulder-236416"
  region = "europe-west4-a"
}

provider "aws" {
  region = "eu-west-1"
}

provider "azurerm" {
  subscription_id = "0"
  client_id = "1"
  client_secret = "2"
  tennant_id = "3"
}

provider "oci" {
  tenancy_ocid = "${var.oci_tenancy_ocid}"
  user_ocid = "${var.oci_user_ocid}"
  fingerprint = "${var.oci_fingerprint}"
  private_key_path = "${var.oci_private_key_path}"
  region = "${var.oci_region}"
}

variable oci_tenancy_ocid {}
variable oci_user_ocid {}
variable oci_fingerprint {}
variable oci_private_key_path {}
variable oci_region {}