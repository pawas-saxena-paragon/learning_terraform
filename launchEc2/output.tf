output "instance_id" {
  description = "the id of the creeated instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "the public ip of the newly created instance"
  value       = aws_instance.app_server.public_ip
}
