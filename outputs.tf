output "PUBLIC_SUBNETS" {
  value = aws_subnet.public-subnets.*.id
}

output "PRIVATE_SUBNETS" {
  value = aws_subnet.private-subnets.*.id
}

output "VPC_ID" {
  value = aws_vpc.main.id
}

output "VPC_CIDR" {
  value = aws_vpc.main.cidr_block
}

