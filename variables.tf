variable "name" {}

variable "backend" {}

variable "policies" {
  type = list(string)
  default = []
}

variable "policy_definitions" {
  type = list(string)
  default = null
}