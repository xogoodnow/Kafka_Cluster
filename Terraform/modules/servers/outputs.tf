output "kafka_ips" {
  value = hcloud_server.kafka[*].ipv4_address
}

output "monitoring_ips" {
  value = hcloud_server.monitoring[*].ipv4_address
}


