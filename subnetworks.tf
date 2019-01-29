resource "aws_subnet" "awsSubnet1" {
  cidr_block        = "${cidrsubnet(aws_vpc.test-aws-vpc.cidr_block, 3, 1)}"
  vpc_id            = "${aws_vpc.test-aws-vpc.id}"
  availability_zone = "${var.availability_zone_var["zone1"]}"

  tags {
    Name = "terraform-test-aws-vpc.awsSubnet1"
  }
}

resource "aws_subnet" "awsSubnet2" {
  cidr_block        = "${cidrsubnet(aws_vpc.test-aws-vpc.cidr_block, 2, 2)}"
  vpc_id            = "${aws_vpc.test-aws-vpc.id}"
  availability_zone = "${var.availability_zone_var["zone2"]}"

  tags {
    Name = "terraform-test-aws-vpc.awsSubnet2"
  }
}
