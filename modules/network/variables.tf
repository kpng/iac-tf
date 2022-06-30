variable "vpc" {
  default = {
    vpc1 = { cidr_block = "10.0.0.0/16" }
    vpc2 = { cidr_block = "11.0.0.0/16" }
  }
}

