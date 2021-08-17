variable "tag" {
  description = "The project name for tagging all resources created."

  validation {
    condition     = length(var.tag) > 0
    error_message = "The tag value must not be empty."
  }
}

variable "api_handler" {
  description = "The function entry point in the AWS Lambda function code."

  validation {
    condition     = length(var.api_handler) > 0
    error_message = "The api_handler value must not be empty."
  }
}

variable "api_runtime" {
  description = "The AWS Lambda function runtime."

  validation {
    condition     = length(var.api_runtime) > 0
    error_message = "The api_runtime value must not be empty."
  }
}

variable "api_memory" {
  description = "The maximum memory size allowed for the execution of the AWS Lambda function."

  validation {
    condition     = var.api_memory >= 128
    error_message = "The api_memory value must be greater than or equal to 128."
  }
}

variable "api_timeout" {
  description = "The maximum time allowed for the execution of the AWS Lambda function."

  validation {
    condition     = var.api_timeout > 0 && var.api_timeout <= 30
    error_message = "The api_timeout value must be within (0, 30]."
  }
}

variable "api_log_retention" {
  description = "The number of days to retain the logs from the API Gateway."

  validation {
    condition     = var.api_log_retention >= 0
    error_message = "The api_log_retention value must be a positive number."
  }
}

variable "api_minimum_compression_size" {
  description = "The minimum API response size to compress."

  validation {
    condition     = var.api_minimum_compression_size >= -1 && var.api_minimum_compression_size <= 10485760
    error_message = "The api_minimum_compression_size value must be in [-1, 10485760]."
  }
}

variable "api_throttle_limit" {
  description = "The throttling limit."

  validation {
    condition     = var.api_throttle_limit >= -1
    error_message = "The api_throttle_limit value must be equal or greater than -1."
  }
}

variable "api_stage_name" {
  description = "The API Gateway stage name."

  validation {
    condition     = length(var.api_stage_name) > 0
    error_message = "The api_stage_name value must not be empty."
  }
}
