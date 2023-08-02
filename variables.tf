variable "access_key" {
  default = "AKIA6JFVU6E4DYY7K6PT"
}

variable "secret_key" {
  default = "HZEKaXS8MhtxZHeWBq1Fz367haylsVqvCQTB5IBl"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "siddhu-is-great"

  validation {
    condition = length(var.bucket_name) > 2 && length(var.bucket_name) < 64 && can(regex("^[0-9A-Za-z-]+$", var.bucket_name))
    error_message = "The bucket_name must follow naming rules. Check them out at: https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html."
  }
}

variable "access_logging_bucket_name" {
  description = "S3 bucket name for access logging storage"
  type        = string
  default     = "my-access-logging-bucket-name"
}
