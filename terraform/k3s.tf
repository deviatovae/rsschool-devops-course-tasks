resource "aws_instance" "k3s_server" {
  ami                    = var.ami
  instance_type          = "t3.small"
  subnet_id              = aws_subnet.private_a.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.private_sg.id]

  user_data = file("${path.module}/user_data/server.sh")

  tags = {
    Name = "k3s-server"
  }
}

resource "aws_instance" "k3s_agent" {
  ami                    = var.ami
  instance_type          = "t3.small"
  subnet_id              = aws_subnet.private_b.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.private_sg.id]

  user_data = templatefile("${path.module}/user_data/agent.sh.tftpl", {
    k3s_server_private_ip = aws_instance.k3s_server.private_ip
    k3s_token             = var.k3s_token
  })

  tags = {
    Name = "k3s-agent"
  }

  depends_on = [aws_instance.k3s_server]
}
