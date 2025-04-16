# 踏み台サーバー
resource "aws_instance" "bastion" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI (例)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  security_groups = [aws_security_group.bastion.name]

  tags = {
    Name = "bastion-host"
  }
}
