variable "testVariable" {
  type    = "string"
  default = "var1"
}

variable "availability_zone_var" {
  type = "map"

  default = {
    zone1 = "zone1Value"
    zone2 = "zone2Value"
  }
}

variable "listVariable" {
  type    = "list"
  default = ["listValue1", "listValue2"]
}

variable "instanceTypeVar" {
  type        = "string"
  description = "Instance type from variable injection"
  default     = "t2.nano"
}

variable "aws_vpc_test-aws-vpc_cidr_block" {
  type        = "string"
  description = "Instance type from variable injection"
  default     = "10.0.0.0/16"
}
