terraform {
  backend "local" {
    path = "/tmp/tf-remote/terraform.tfstate"
  }
}

resource "local_file" "check" {
  filename = "backend-check.txt"
  content  = "terraform backend works"
}