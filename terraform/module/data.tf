data "archive_file" "this" {
  type        = "zip"
  source_dir  = "${path.module}/../../src"
  output_path = "${path.module}/../../dist/${var.tag}.zip"
}
