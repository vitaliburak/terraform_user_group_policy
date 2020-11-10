resource "aws_s3_bucket" "Bucket" {
  bucket = "vitaliibesteverbucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

  versioning {
    enabled = true
  }
}