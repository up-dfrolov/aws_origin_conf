variable "name" {}

variable "env" {}

variable "kms_key" {}

variable "tags" {
  type    = "map"
  default = {}
}
