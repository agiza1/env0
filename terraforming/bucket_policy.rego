
# bucket_policy.rego
package terraform.s3_bucket

# Validate that the bucket name starts with "env0"
deny[msg] {
  input.resource_changes[_].type == "aws_s3_bucket"
  bucket_name := input.resource_changes[_].change.after.bucket
  not startswith(bucket_name, "env0")
  msg := "S3 bucket name must start with 'env0'"
}
