variable "vpcs" {
  default = {
    "vpc1" = { cidr = "11.0.0.0/16", public = ["11.0.0.0/24", "11.0.2.0/24"], private = ["11.0.1.0/24", "11.0.3.0/24"], public1 = "11.0.0.0/24", public2 = "11.0.2.0/24", private1 = "11.0.1.0/24", private2 = "11.0.3.0/24" },
    "vpc2" = { cidr = "12.0.0.0/16", public = ["12.0.0.0/24", "12.0.2.0/24"], private = ["12.0.1.0/24", "12.0.3.0/24"], public1 = "12.0.0.0/24", public2 = "12.0.2.0/24", private1 = "12.0.1.0/24", private2 = "12.0.3.0/24" },
    "vpc3" = { cidr = "13.0.0.0/16", public = ["13.0.0.0/24", "13.0.2.0/24"], private = ["13.0.1.0/24", "13.0.3.0/24"], public1 = "13.0.0.0/24", public2 = "13.0.2.0/24", private1 = "13.0.1.0/24", private2 = "13.0.3.0/24" }
  }
}

variable "vpc" {
  default = "11.0.0.0/16"
}

variable "public_subnet" {
  default = ["11.0.0.0/24", "11.0.2.0/24"]
}

variable "private_subnet" {
  default = ["11.0.1.0/24", "11.0.3.0/24"]
}