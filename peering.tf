resource "aws_vpc_peering_connection" "peering" {
  peer_vpc_id                         = aws_vpc.main.id
  vpc_id                              = var.DEFAULT_VPC_ID
  auto_accept                         = true

  accepter {
    allow_remote_vpc_dns_resolution   = true
  }

  requester {
    allow_remote_vpc_dns_resolution   = true
  }
}
