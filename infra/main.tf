terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

variable "app_name" {
  type    = string
  default = "demo"
}

resource "random_pet" "name" {
  prefix = var.app_name
}

output "pet_name" {
  value = random_pet.name.id
}
