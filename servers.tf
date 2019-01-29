data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "ubuntu_instance" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instanceTypeVar}"

  tags {
    Name = "aws_ubuntu_instance1"
  }
}
