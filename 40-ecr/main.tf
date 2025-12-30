resource "aws_ecr_repository" "main" {
  name                 = "${var.project}/catalogue"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
  force_delete = true
}

resource "aws_ecr_repository" "main" {
  name                 = "${var.project}/cart"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
  force_delete = true
}
resource "aws_ecr_repository" "main" {
  name                 = "${var.project}/user"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
  force_delete = true
}

resource "aws_ecr_repository" "main" {
  name                 = "${var.project}/payment"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
  force_delete = true
}
resource "aws_ecr_repository" "main" {
  name                 = "${var.project}/shipping"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
  force_delete = true
}