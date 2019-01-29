terraform {
  required-version = "~> 0.11.11"

  # Multi-line comment below
  /*  backend "s3" {
    encrypt = true
    bucket  = "<bucket-name>"
    key     = "<dir-name>/<filename>.tfstate"
    region  = "<region-name>"
  }*/
}
