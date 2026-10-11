data "databricks_aws_bucket_policy" "aws_bucket_policy_lookup" {
  for_each = var.aws_bucket_policy_lookup

  bucket                   = each.value.bucket
  aws_partition            = each.value.aws_partition
  databricks_account_id    = each.value.databricks_account_id
  databricks_e2_account_id = each.value.databricks_e2_account_id
  full_access_role         = each.value.full_access_role
}

