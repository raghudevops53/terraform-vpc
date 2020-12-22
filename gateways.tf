resource "aws_internet_gateway" "igw" {
  vpc_id              = aws_vpc.main.id
  tags                = {
    Name              = "${var.PROJECT_NAME}-${var.ENV}-igw"
    Environment       = var.ENV
    Provisioned_by    = "Terraform"
  }
}

