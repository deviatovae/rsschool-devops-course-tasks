output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id
  ]
}

output "private_subnet_ids" {
  value = [
    aws_subnet.private_a.id,
    aws_subnet.private_b.id
  ]
}

output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat.id
}

output "k3s_server_ip" {
  value = aws_instance.k3s_server.private_ip
}

output "k3s_agent_ip" {
  value = aws_instance.k3s_agent.private_ip
}
