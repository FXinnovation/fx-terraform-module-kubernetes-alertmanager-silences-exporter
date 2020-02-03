output "namespace" {
  description = "Namespace in which the module is deployed."
  value       = var.namespace
}

output "deployment_name" {
  description = "Name of the deployment created by this module."
  value       = var.deployment_name
}

output "service_name" {
  description = "Name of the service created by this module."
  value       = var.service_name
}

output "config_map_name" {
  description = "Name of the config_map created by this module."
  value       = var.config_map_name
}

output "secret_name" {
  description = "Name of the secret created by this module."
  value       = var.secret_name
}

output "port" {
  description = "Port on which the service listens."
  value       = var.port
}
