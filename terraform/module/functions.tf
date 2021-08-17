resource "aws_lambda_function" "this" {
  function_name    = var.tag
  filename         = data.archive_file.this.output_path
  source_code_hash = data.archive_file.this.output_base64sha256
  handler          = var.api_handler
  runtime          = var.api_runtime
  memory_size      = var.api_memory
  timeout          = var.api_timeout
  role             = aws_iam_role.lambda.arn

  tags = {
    Name = var.tag
  }
}

resource "aws_lambda_permission" "this" {
  statement_id  = "AllowAPIGatewayInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.this.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.this.execution_arn}/*/*"
}
