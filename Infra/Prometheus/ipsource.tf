resource "null_resource" "write_prometheus_ip" {
  depends_on = [aws_instance.server]

  provisioner "local-exec" {
    command = "echo ${aws_instance.server.public_ip} > ./prometheus_ip.txt"
  }
}