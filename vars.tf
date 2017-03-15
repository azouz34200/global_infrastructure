variable "env" {}
variable "cidr_block" {}
variable endpoint_slack {}
variable sns_enable {}

provider "aws2" {
  region = "us-east-1"
}

variable "main" {
  default = "global_infra"
}

#variable "subnet_azs" {
#    description = "Subnet AZ, separated by comma. Default is \"a,b\". Please check your available AZ before specifying this value."
#    default = "a,b,c"
#}
/* ECS optimized AMIs per region */

variable "ami_image_id" {
  # Red Hat Enterprise Linux 7.3 (HVM), SSD Volume Type - ami-e4c63e8b and Centos
  default = {
    eu-west-1 = "ami-e4c63e8b"
    eu-west-1 = "ami-7abd0209"

    #Amazon for rancher
    eu-west-1 = "ami-122a0b74"
  }
}

variable "instance_type" {
  default     = "t2.micro"
  description = "EC2 instance type to use"
}

variable "ssh_pubkey_file" {
  description = "Path to an SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}

variable "aws_region" {
  default     = "eu-west-1"
  description = "Determine AWS region endpoint to access."
}

/* Region settings for AWS provider */
provider "aws" {
  region = "${var.aws_region}"
}
