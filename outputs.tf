output "api_key" {
  value = data.aws_secretsmanager_secret_version.datadog_api_key.secret_string
}

output "app_key" {
  value = data.aws_secretsmanager_secret_version.datadog_app_key.secret_string
}

output "api_url" {
  value = "https://api.datadoghq.eu/"
}
