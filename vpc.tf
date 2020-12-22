resource "aws_vpc" "main" {
  cidr_block          = var.VPC_CIDR
  tags                = {
    Name              = "${var.PROJECT_NAME}-${var.ENV}-vpc"
    Environment       = var.ENV
    Provisioned_by    = "Terraform"
  }
}


resource "aws_subnet" "private-subnets" {
  count               = 2
  cidr_block          = cidrsubnet(var.VPC_CIDR, 2, count.index)
  vpc_id              = aws_vpc.main.id
}

resource "aws_subnet" "public-subnets" {
  count               = 2
  cidr_block          = cidrsubnet(var.VPC_CIDR, 2, count.index+2)
  vpc_id              = aws_vpc.main.id
}

