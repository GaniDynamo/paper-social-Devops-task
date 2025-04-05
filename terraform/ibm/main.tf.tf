provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.ibm_region
}

resource "ibm_is_ssh_key" "key" {
  name       = "deployer-key"
  public_key = file(var.public_key_path)
}

resource "ibm_is_vpc" "vpc" {
  name = "paper-vpc"
}

resource "ibm_is_subnet" "subnet" {
  name                     = "paper-subnet"
  vpc                      = ibm_is_vpc.vpc.id
  zone                     = var.ibm_zone
  ipv4_cidr_block          = "10.240.0.0/24"
  total_ipv4_address_count = 256
}

resource "ibm_is_security_group" "sg" {
  name = "paper-sg"
  vpc  = ibm_is_vpc.vpc.id
}

resource "ibm_is_security_group_rule" "inbound-ssh" {
  group     = ibm_is_security_group.sg.id
  direction = "inbound"
  protocol  = "tcp"
  port_min  = 22
  port_max  = 22
  remote    = "0.0.0.0/0"
}

resource "ibm_is_instance" "vm" {
  name           = "paper-vm"
  image          = var.ibm_image
  profile        = var.ibm_profile
  zone           = var.ibm_zone
  vpc            = ibm_is_vpc.vpc.id
  subnet         = ibm_is_subnet.subnet.id
  ssh_keys       = [ibm_is_ssh_key.key.id]
  primary_network_interface {
    security_groups = [ibm_is_security_group.sg.id]
  }

  boot_volume {
    encryption = "provider_managed"
  }
}
