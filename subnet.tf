resource "aws_subnet" "subnet_front_a" {
	vpc_id = "${aws_vpc.main.id}"
	cidr_block = "10.${var.cidr_block}.1.0/24"
	availability_zone = "${var.aws_region}a"
	map_public_ip_on_launch = false
  tags {
      Name = "subnet_front_a-${var.main}-${var.env}"
  }
}
resource "aws_subnet" "subnet_front_b" {
	vpc_id = "${aws_vpc.main.id}"
	cidr_block = "10.${var.cidr_block}.2.0/24"
	availability_zone = "${var.aws_region}b"
	map_public_ip_on_launch = false
  tags {
      Name = "subnet_front_b-${var.main}-${var.env}"
  }
}
resource "aws_subnet" "subnet_front_c" {
	vpc_id = "${aws_vpc.main.id}"
	cidr_block = "10.${var.cidr_block}.3.0/24"
	availability_zone = "${var.aws_region}c"
	map_public_ip_on_launch = false
  tags {
      Name = "subnet_front_c-${var.main}-${var.env}"
  }
}

resource "aws_subnet" "subnet_back_a" {
	vpc_id = "${aws_vpc.main.id}"
	cidr_block = "10.${var.cidr_block}.4.0/24"
	availability_zone = "${var.aws_region}a"
	map_public_ip_on_launch = false
  tags {
      Name = "subnet_back_a-${var.main}-${var.env}"
  }
}
resource "aws_subnet" "subnet_back_b" {
	vpc_id = "${aws_vpc.main.id}"
	cidr_block = "10.${var.cidr_block}.5.0/24"
	availability_zone = "${var.aws_region}b"
	map_public_ip_on_launch = false
  tags {
      Name = "subnet_back_b-${var.main}-${var.env}"
  }
}
resource "aws_subnet" "subnet_back_c" {
	vpc_id = "${aws_vpc.main.id}"
	cidr_block = "10.${var.cidr_block}.6.0/24"
	availability_zone = "${var.aws_region}c"
	map_public_ip_on_launch = false
  tags {
      Name = "subnet_back_c-{var.main}-${var.env}"
  }
}
