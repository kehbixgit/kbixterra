resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "terraform-s3-kbix2020"
  acl    = "public-read"

  tags = {
    Name        = "Mykb2020"
    Environment = "Dev"
  }
}
