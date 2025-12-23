terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "hello" {
  filename = "${path.module}/hello.txt"
  content  = "Terraform works. I touched it with my hands."
}

output "file_path" {
  value = local_file.hello.filename
}
