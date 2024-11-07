terraform {
  required_version = "~> 1.9.6"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.2.0"
    }
  }
}

# Terraform Random Pet
resource "random_id" "id" {
        byte_length = 3072
        count = 10

        keepers = {
    uuid = uuid()
  }
}
