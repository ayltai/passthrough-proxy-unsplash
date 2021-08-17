variable "aws_access_key" {
  description = "The access key of the AWS account used for deployment."
  sensitive   = true

  validation {
    condition     = length(var.aws_access_key) > 0
    error_message = "The aws_access_key value must not be empty."
  }
}

variable "aws_secret_key" {
  description = "The secret key of the AWS account used for deployment."
  sensitive   = true

  validation {
    condition     = length(var.aws_secret_key) > 0
    error_message = "The aws_secret_key value must not be empty."
  }
}

variable "aws_region" {
  description = "The AWS region to deploy this project to."
  default     = "ap-southeast-1"

  validation {
    condition     = length(var.aws_region) > 0
    error_message = "The aws_region value must not be empty."
  }
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
