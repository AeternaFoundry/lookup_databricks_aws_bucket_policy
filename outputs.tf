output "aws_bucket_policy_lookup_id" {
  description = "Map of id values across all aws_bucket_policy_lookup, keyed the same as var.aws_bucket_policy_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_aws_bucket_policy.aws_bucket_policy_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "aws_bucket_policy_lookup_aws_partition" {
  description = "Map of aws_partition values across all aws_bucket_policy_lookup, keyed the same as var.aws_bucket_policy_lookup except keys with no aws_partition are omitted"
  value       = { for k, v in data.databricks_aws_bucket_policy.aws_bucket_policy_lookup : k => v.aws_partition if v.aws_partition != null && length(v.aws_partition) > 0 }
}
output "aws_bucket_policy_lookup_bucket" {
  description = "Map of bucket values across all aws_bucket_policy_lookup, keyed the same as var.aws_bucket_policy_lookup except keys with no bucket are omitted"
  value       = { for k, v in data.databricks_aws_bucket_policy.aws_bucket_policy_lookup : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "aws_bucket_policy_lookup_databricks_account_id" {
  description = "Map of databricks_account_id values across all aws_bucket_policy_lookup, keyed the same as var.aws_bucket_policy_lookup except keys with no databricks_account_id are omitted"
  value       = { for k, v in data.databricks_aws_bucket_policy.aws_bucket_policy_lookup : k => v.databricks_account_id if v.databricks_account_id != null && length(v.databricks_account_id) > 0 }
}
output "aws_bucket_policy_lookup_databricks_e2_account_id" {
  description = "Map of databricks_e2_account_id values across all aws_bucket_policy_lookup, keyed the same as var.aws_bucket_policy_lookup except keys with no databricks_e2_account_id are omitted"
  value       = { for k, v in data.databricks_aws_bucket_policy.aws_bucket_policy_lookup : k => v.databricks_e2_account_id if v.databricks_e2_account_id != null && length(v.databricks_e2_account_id) > 0 }
}
output "aws_bucket_policy_lookup_full_access_role" {
  description = "Map of full_access_role values across all aws_bucket_policy_lookup, keyed the same as var.aws_bucket_policy_lookup except keys with no full_access_role are omitted"
  value       = { for k, v in data.databricks_aws_bucket_policy.aws_bucket_policy_lookup : k => v.full_access_role if v.full_access_role != null && length(v.full_access_role) > 0 }
}
output "aws_bucket_policy_lookup_json" {
  description = "Map of json values across all aws_bucket_policy_lookup, keyed the same as var.aws_bucket_policy_lookup except keys with no json are omitted"
  value       = { for k, v in data.databricks_aws_bucket_policy.aws_bucket_policy_lookup : k => v.json if v.json != null && length(v.json) > 0 }
}

