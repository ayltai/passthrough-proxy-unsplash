resource "aws_cloudwatch_log_group" "lambda" {
  name              = "/aws/lambda/${aws_lambda_function.this.function_name}"
  retention_in_days = var.api_log_retention

  tags = {
    Name = var.tag
  }
}

resource "aws_cloudwatch_log_group" "gateway" {
  name              = "/aws/api_gw/${aws_api_gateway_rest_api.this.name}"
  retention_in_days = var.api_log_retention

  tags = {
    Name = var.tag
  }
}
