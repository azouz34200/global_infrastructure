# Input Variables
variable "username" {}
variable "group-name" {}
variable "ssh_pubkey_file" {}
# Configure the AWS Provider
provider "aws" {
    region = "eu-west-1"
}
