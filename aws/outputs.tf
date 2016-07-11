output "elastic_ip" {
  value = "${aws_instance.pptpd.public_ip}"
}

output "tag_name" {
  value = "${aws_instance.pptpd.tags.Name}"
}
