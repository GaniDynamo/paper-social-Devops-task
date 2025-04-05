variable "ibmcloud_api_key" {}

variable "ibm_region" {
  default = "us-south"
}

variable "ibm_zone" {
  default = "us-south-1"
}

variable "ibm_image" {
  default = "r014-3f18e1c7-df3e-49f6-b7ee-f63a9b8a5f4c"
}

variable "ibm_profile" {
  default = "bx2-2x8"
}

variable "public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}
