terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
    }
  }
}

data "aws_secretsmanager_secret" "datadog_api_key" {
  arn = "arn:aws:secretsmanager:eu-west-1:727646359971:secret:datadog_digital_agent_api_key-4Qtp5Q"
}

data "aws_secretsmanager_secret_version" "datadog_api_key" {
  secret_id = data.aws_secretsmanager_secret.datadog_api_key.id
}


data "aws_secretsmanager_secret" "datadog_app_key" {
  arn = "arn:aws:secretsmanager:eu-west-1:727646359971:secret:datadog_digital_app_key-p2YGnW"
}

data "aws_secretsmanager_secret_version" "datadog_app_key" {
  secret_id = data.aws_secretsmanager_secret.datadog_app_key.id
}
