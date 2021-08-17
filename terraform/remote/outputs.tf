output "rest_api_url" {
  value = module.this.base_url
}

resource "local_file" "rest_api_url" {
  filename = "rest_api_url.txt"
  content  = module.this.base_url
}
