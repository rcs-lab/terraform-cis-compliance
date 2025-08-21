
resource "aws_cloudtrail" "cis" {
  name                          = "CIS-CloudTrail"
  s3_bucket_name                = aws_s3_bucket.cloudtrail_bucket.id
  include_global_service_events = true
  is_multi_region_trail        = true
  enable_log_file_validation   = true
}

resource "aws_s3_bucket" "cloudtrail_bucket" {
  bucket = "cis-cloudtrail-logs"
  acl    = "private"
}
