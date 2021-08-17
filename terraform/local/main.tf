module "this" {
  source                       = "../module"
  tag                          = var.tag
  api_handler                  = var.api_handler
  api_runtime                  = var.api_runtime
  api_memory                   = var.api_memory
  api_timeout                  = var.api_timeout
  api_log_retention            = var.api_log_retention
  api_minimum_compression_size = var.api_minimum_compression_size
  api_throttle_limit           = var.api_throttle_limit
  api_stage_name               = var.api_stage_name
}
