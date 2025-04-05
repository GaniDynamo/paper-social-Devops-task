variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "Ubuntu AMI ID for your region"
  default     = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "public_key_path" {
  description = "Path to your public SSH key"
  default     = "~/.ssh/id_rsa.pub"
}

variable "private_key_path" {
  description = "Path to your private SSH key"
  default     = "~/.ssh/id_rsa"
}
