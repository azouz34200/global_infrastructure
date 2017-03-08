resource "aws_key_pair" "mykey" {
  key_name = "mykey"
  public_key = "${var.ssh_pubkey_file}"
  }
