resource "aws_efs_file_system" "rancher_efs" {
  creation_token = "rancher-efs-${var.env}"
  tags {
      Name = "rancher_efs-${var.main}-${var.env}"
  }
}
resource "aws_efs_mount_target" "mount_front_a" {
  file_system_id = "${aws_efs_file_system.rancher_efs.id}"
  subnet_id = "${aws_subnet.subnet_front_a.id}"
  security_groups = ["${aws_security_group.sg_front_service.id}"]
}
resource "aws_efs_mount_target" "mount_front_b" {
  file_system_id = "${aws_efs_file_system.rancher_efs.id}"
  subnet_id = "${aws_subnet.subnet_front_b.id}"
  security_groups = ["${aws_security_group.sg_front_service.id}"]
}
resource "aws_efs_mount_target" "mount_front_c" {
  file_system_id = "${aws_efs_file_system.rancher_efs.id}"
  subnet_id = "${aws_subnet.subnet_front_c.id}"
  security_groups = ["${aws_security_group.sg_front_service.id}"]
}
