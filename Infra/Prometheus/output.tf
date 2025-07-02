
# Sortie pour afficher l'IP publique de l'instance
output "public_ip" {
  description = "IP publique de l'instance EC2"
  value       = aws_instance.server.public_ip
  }