# EC2 Public IP Address

output "web_server_public_ip" {
  description = "Public IP address of the web server"
  value       = aws_instance.web.public_ip
}


# Website URL

output "website_url" {
  description = "URL to access the Nginx website"
  value       = "http://${aws_instance.web.public_ip}"
}


# EC2 Instance ID

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web.id
}


# VPC ID

output "vpc_id" {
  description = "Created VPC ID"
  value       = aws_vpc.main.id
}
