resource "aws_db_subnet_group" "sub_db" {
 name = "db_subnet-${var.env}"
 description = "db subnet DEV"
 subnet_ids = [
   "${aws_subnet.subnet_back_a.id}",
   "${aws_subnet.subnet_back_b.id}",
   "${aws_subnet.subnet_back_c.id}"
 ]
 tags {
     Name = "subnet_db-${var.main}-${var.env}"
 }
}
