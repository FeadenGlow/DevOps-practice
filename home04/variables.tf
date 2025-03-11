variable "ami_id" {
  type = string
  default = "ami-00111e93b2d8aff40"
}

variable "region" {
  type = string
  default = "us-east-1"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "vpc_id" {
  type = string
  default = "vpc-09ddc45a9a696140d"
}

variable "public_key_path" {
  type = string
  default = "/Users/macbookpro/.ssh/id_ed25519.pub"
}

variable "public_teacher_key_path" {
  type = string
  default = "/Users/macbookpro/documents/distedu/util/id_ed25519.pub"
}