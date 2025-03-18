resource "local_file" "inventory" {
  content = <<EOF
  [servers]
  ${aws_instance.example[0].public_ip}
  ${aws_instance.example[1].public_ip}

  [servers:vars]
  ansible_user=ubuntu
  ansible_ssh_private_key_file=~/.ssh/id_ed25519
  EOF

  filename = "${path.module}/ansible_project/inventory.ini"
}