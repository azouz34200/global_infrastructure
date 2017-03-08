# Input Variables
variable "username" {}
variable "group-name" {}
variable "ssh_pubkey_file" {}
# Configure the AWS Provider
provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "eu-west-1"
}
