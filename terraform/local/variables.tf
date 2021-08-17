variable "aws_access_key" {
  default = "mock_access_key"
}

variable "aws_secret_key" {
  default = "mock_secret_key"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "local_endpoint" {
  default = "http://localhost:4566"
}

variable "tag" {
  default = "passthrough-proxy-unsplash"
}

variable "api_handler" {
  default = "index.handler"
}

variable "api_runtime" {
  default = "nodejs14.x"
}

variable "api_memory" {
  default = 128
}

variable "api_timeout" {
  default = 10
}

variable "api_log_retention" {
  default = 7
}

variable "api_minimum_compression_size" {
  default = 256
}

variable "api_throttle_limit" {
  default = 50
}

variable "api_stage_name" {
  default = "api"
}
