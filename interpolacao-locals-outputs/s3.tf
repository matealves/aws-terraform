resource "aws_s3_bucket" "test-bucket-2" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_bucket_object" "this" {
  bucket = aws_s3_bucket.test-bucket-2.bucket
  key    = "config/${local.ip_filepath}"
  source = "ips.json"
  etag   = filemd5(local.ip_filepath)
}
