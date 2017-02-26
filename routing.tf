resource "aws_internet_gateway" "gw-to-internet" {
 vpc_id = "${aws_vpc.main.id}"
 tags {
     Name = "gw-to-internet-${var.main}-${var.env}"
 }
}

resource "aws_route_table" "route-to-gw" {
 vpc_id = "${aws_vpc.main.id}"
 route {
 cidr_block = "0.0.0.0/0"
   gateway_id = "${aws_internet_gateway.gw-to-internet.id}"
 }
 tags {
     Name = "route-to-gw-${var.main}-${var.env}"
 }
}

resource "aws_route_table_association" "front-a" {
 subnet_id = "${aws_subnet.subnet_front_a.id}"
 route_table_id = "${aws_route_table.route-to-gw.id}"

}

resource "aws_route_table_association" "front-b" {
 subnet_id = "${aws_subnet.subnet_front_b.id}"
 route_table_id = "${aws_route_table.route-to-gw.id}"

}

resource "aws_route_table_association" "front-c" {
 subnet_id = "${aws_subnet.subnet_front_c.id}"
 route_table_id = "${aws_route_table.route-to-gw.id}"

}
