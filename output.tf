
output "front_subnet_az_a_id" {

  value="${aws_subnet.subnet_front_a.id}"

}

output "front_subnet_az_b_id" {

  value="${aws_subnet.subnet_front_b.id}"

}

output "front_subnet_az_c_id" {

  value="${aws_subnet.subnet_front_c.id}"

}

output "back_subnet_az_a_id" {

  value="${aws_subnet.subnet_back_a.id}"

}
output "back_subnet_az_b_id" {

  value="${aws_subnet.subnet_back_b.id}"

}

output "back_subnet_az_c_id" {

  value="${aws_subnet.subnet_back_c.id}"

}
output "vpc_main_id"{
  value = "${aws_vpc.main.id}"
}
output "db_subnet_id"{
  value ="${aws_db_subnet_group.sub_db.id}"
}
output "sg_backend_id"{
  value ="${aws_security_group.sg_back_service.id}"
}
output "rancher_nfs_dnsname_a"{
  value="${aws_efs_mount_target.mount_front_a.dns_name}"
}
output "rancher_nfs_dnsname_b"{
  value="${aws_efs_mount_target.mount_front_b.dns_name}"
}
output "rancher_nfs_dnsname_c"{
  value="${aws_efs_mount_target.mount_front_c.dns_name}"
}
