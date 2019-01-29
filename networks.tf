resource "aws_vpc" "test-aws-vpc" {
  cidr_block           = "${var.aws_vpc_test-aws-vpc_cidr_block}"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags {
    Name = "terraform-test-aws-vpc"
  }
}
