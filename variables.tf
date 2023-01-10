# --- root/variables.tf ---

variable "access_ip" {
  type    = string
  default = "0.0.0.0/0"
}

variable "bucket_name" {
  default     = "s3-backend-jw-0123"
  type        = string
  description = "bucket name"
}
