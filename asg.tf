/**
  * Security group for each instances
  */
resource "aws_security_group" "sg_public" {
    name = "sg_public"
    vpc_id = "${aws_vpc.main.id}"
    description = "Security group for elb"
    tags {
        Name = "sg_public-${var.main}-${var.env}"
    }

        egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
      }
}

resource "aws_security_group" "sg_front_service" {
    name = "front_service"
    vpc_id = "${aws_vpc.main.id}"
    description = "Security group for front instance"
    tags {
        Name = "front_service-${var.main}-${var.env}"
    }

}
resource "aws_security_group_rule" "allow_inbound_traffic_http_from_sg_public" {
    type = "ingress"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    security_group_id = "${aws_security_group.sg_front_service.id}"
    source_security_group_id = "${aws_security_group.sg_public.id}"

}
resource "aws_security_group_rule" "allow_inbound_traffic_https_from_sg_public" {
    type = "ingress"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    security_group_id = "${aws_security_group.sg_front_service.id}"
    source_security_group_id = "${aws_security_group.sg_public.id}"

}

resource "aws_security_group_rule" "allow_inbound_traffic_https" {
    type = "ingress"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = "${aws_security_group.sg_public.id}"
}
resource "aws_security_group_rule" "allow_inbound_traffic_http" {
    type = "ingress"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = "${aws_security_group.sg_public.id}"
}

/* Allow all outgoing connections */
resource "aws_security_group_rule" "allow_all_egress" {
    type = "egress"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]

    security_group_id = "${aws_security_group.sg_front_service.id}"
}

/* Permit SSH to instances from home */
resource "aws_security_group_rule" "allow_ssh_from_home" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["176.187.133.220/32"]
    security_group_id = "${aws_security_group.sg_front_service.id}"
}

resource "aws_security_group_rule" "allow_rancher_docker" {
    type = "ingress"
    from_port = 2376
    to_port = 2376
    protocol = "tcp"
    cidr_blocks = ["176.187.133.220/32"]
    security_group_id = "${aws_security_group.sg_front_service.id}"
}

resource "aws_security_group_rule" "allow_all_from_peers" {
    type = "ingress"
    from_port = 0
    to_port = 0
    protocol = "-1"

    security_group_id = "${aws_security_group.sg_front_service.id}"
    source_security_group_id = "${aws_security_group.sg_front_service.id}"
}


resource "aws_security_group" "sg_back_service" {
  name = "back_service"
  vpc_id = "${aws_vpc.main.id}"
  description = "Security group for back instance"
  tags {
      Name = "back_service-${var.main}-${var.env}"
  }

 ingress {
   from_port = 3306
   to_port = 3306
   protocol = "tcp"
   security_groups = [
     "${aws_security_group.sg_front_service.id}"
   ]
 }
}
