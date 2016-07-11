#EC2 resource
resource "aws_instance" "pptpd" {
    ami = "${lookup(var.ami_ids, var.aws_region)}"
    instance_type = "${var.instance_type}"
    key_name = "${aws_key_pair.pptpd.id}"
    security_groups = [
        "${aws_security_group.pptpd.name}",
        "${aws_security_group.ssh_only.name}"
    ]
    tags {
        Role = "vpn"
        Name = "pptpd"
    }
}
