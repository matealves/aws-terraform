output "bucket_name" {
  value = aws_s3_bucket.test-bucket-2.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.test-bucket-2.arn
}

output "bucket_domain_name" {
  value = aws_s3_bucket.test-bucket-2.bucket_domain_name
}

output "ips_file_path" {
  value = "${aws_s3_bucket.test-bucket-2.bucket}/${aws_s3_bucket_object.this.key}"
}
