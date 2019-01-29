resource "aws_security_group" "test-aws-security-group" {
  vpc_id      = "${aws_vpc.test-aws-vpc.id}"
  description = "Test AWS security group description"

  ingress {
    cidr_blocks = [
      "${aws_vpc.test-aws-vpc.cidr_block}",
    ]

    from_port = 80
    to_port   = 80
    protocol  = "tcp"
  }
}
