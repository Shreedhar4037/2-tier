# s3-backend/outputs.tf

output "bucket_name" {
  value = aws_s3_bucket.s3_backend_bucket.bucket
}
