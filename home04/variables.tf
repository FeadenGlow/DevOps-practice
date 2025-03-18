variable "ami_id" {
  type = string
  default = "ami-002e81a9a522f1f19"
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
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMzlGmgtlNKjldqSNS+El6BuArmn1mi83W/ezNE2S0tX macbookpro@MacBookPros-MacBook-Pro.local"
}

variable "public_teacher_key_path" {
  type = string
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOkAhvfRyUvgsUwENIds1a/4OvuHQgLki8K1EzPltl5M i.ilin@iilin-pro14.local"
}