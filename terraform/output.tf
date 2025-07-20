output "main_instance_ip" {
  value = aws_instance.ec2_portfolio.public_ip
}
