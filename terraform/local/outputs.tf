output "rest_api_url" {
  value = "http://localhost:4566/restapis/${module.this.rest_api_id}/${module.this.stage_name}/_user_request_"
}

resource "local_file" "rest_api_url" {
  filename = "rest_api_url.txt"
  content  = "http://localhost:4566/restapis/${module.this.rest_api_id}/${module.this.stage_name}/_user_request_"
}
