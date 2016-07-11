resource "aws_security_group" "ssh_only" {
    name = "ssh_only"
    description = "ssh_only"

    # SSH access from anywhere
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    # Outbound internet access
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "pptpd" {
    name = "pptpd"
    description = "pptpd"

    # PPTPD inbout rules
    ingress {
        from_port = 1723
        to_port = 1723
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    # Outbound internet access
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
