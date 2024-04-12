######## S3 config #########

module "image-processing-bucket" {
 source = "terraform-aws-modules/s3-bucket/aws"

 for_each = toset(["raw-images1", "processed-images1"])

 bucket = "$(each.key)-vividarts-cy"
 acl = "private"

 block_public_acls         = false
 ignore_public_acls        = true
 block_public_policy       = true
 restrict_public_buckets   = true


 control_object_ownership   = true
 object_ownership           = "ObjectWriter"

 






}