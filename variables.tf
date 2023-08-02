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

variable "os-name" {
    default = "ami-0f5ee92e2d63afc18"
}

variable "key-pair" {
    default = "terraform"
}

variable "instance-type" {
    default = "t2.small"
}
