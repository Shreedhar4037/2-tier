# --- s3-backend/main.tf ---

resource "aws_s3_bucket" "s3_backend_bucket" {
  bucket = var.bucket_name
  tags = {
    #Name = var.tags
  }
}

# # An ACL will enable you to manage access to bucket and objects
# resource "aws_s3_bucket_acl" "s3_backend_acl" {
#   bucket = aws_s3_bucket.s3_backend_bucket.id
#   acl    = var.acl
# }

# This will block all public access
resource "aws_s3_bucket_public_access_block" "s3_backend" {
  bucket = aws_s3_bucket.s3_backend_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Image and Log objects
resource "aws_s3_object" "s3-backend-images" {
  bucket = var.bucket_name
  key    = "images/"
  source = "/dev/null"

  depends_on = [aws_s3_bucket.s3_backend_bucket]
}

resource "aws_s3_object" "s3-backend-logs" {
  bucket = var.bucket_name
  key    = "logs/"
  source = "/dev/null"

  depends_on = [aws_s3_bucket.s3_backend_bucket]
}

# resource "aws_s3_bucket_lifecycle_configuration" "s3-backend" {
#   bucket = aws_s3_bucket.s3_backend_bucket.id

#   # This rule will move objects older than 90 days to GLACIER
#   rule {
#     id = "Rule 1 Images"
#     filter {
#       prefix = "Images/"
#     }
#     transition {
#       days          = 90
#       storage_class = "GLACIER"
#     }
#     status = "Enabled"
#   }

#   # This rule will delete objects older than 90 days
#   rule {
#     id = "Rule 2 Logs"
#     filter {
#       prefix = "Logs/"
#     }
#     expiration {
#       days = 90
#     }
#     status = "Enabled"
#   }
# }
