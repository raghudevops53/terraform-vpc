resource "aws_internet_gateway" "igw" {
  vpc_id              = aws_vpc.main.id
  tags                = {
    Name              = "${var.PROJECT_NAME}-${var.ENV}-igw"
    Environment       = var.ENV
    Provisioned_by    = "Terraform"
  }
}

resource "aws_eip" "ngw" {
  vpc                 = true
}

//resource "aws_nat_gateway" "ngw" {
//  allocation_id       = aws_eip.nat.id
//  subnet_id           = aws_subnet.example.id
//}