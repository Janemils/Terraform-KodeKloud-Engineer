# main.tf
# Terraform configuration to create an AWS key pair and save private key locally

# 1️⃣ Specify the AWS provider
# No need to specifically mention in this file as it's already mentioned in the provider.tf


# 2️⃣ Generate a new RSA key pair locally
# What tls_private_key is:
# tls_private_key is a Terraform resource type provided by the TLS provider.
# It's purpose: Generates a new private and public key locally (you don’t have to create it manually).
# Terraform can then use this key to create things like AWS key pairs or SSL certificates.

resource "tls_private_key" "datacenter_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

# We have to upload the public key to the EC2 instance and register it as key-pair and name it as whatever is given in the problem statement.
# 3️⃣ Create the AWS key pair using the generated public key
resource "aws_key_pair" "<name_of_your_key_pair>" {
  key_name   = "<name_of_your_key_pair>"
  public_key = tls_private_key.datacenter_key.public_key_openssh
}

# 4️⃣ Save the private key to a local file in the path "/home/bob/<filename>".
resource "local_file" "private_key" {
  content         = tls_private_key.datacenter_key.private_key_pem
  filename        = "/home/bob/<filename>"
  file_permission = "0600"
}
