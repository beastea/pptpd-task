# Configure the AWS Provider
provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "${var.aws_region}"
}

resource "aws_key_pair" "pptpd" {
    key_name = "deploy_key"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQCmh7I82oxWJcm2mqNg3MuA69po+QbvGgwkHj0k7giKvltcGq4thLMx2GbM//BqdvuWfDeM28KgdViwYQgKB8JQOYmE+8vgN28yp4gVmhwNj7F13gon9Euwxd+q8ZOAZxWZjJ2f6Nq10H4HLQrWhPob4QWLUhEON6jIGwr/uFallQ== deployer.local"
}
