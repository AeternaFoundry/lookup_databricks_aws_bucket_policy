variable "aws_bucket_policy_lookup" {
  description = <<EOT
Map of aws_bucket_policy_lookup, attributes below
Required:
    - bucket
Optional:
    - aws_partition
    - databricks_account_id
    - databricks_e2_account_id
    - full_access_role
EOT

  type = map(object({
    bucket                   = string
    aws_partition            = optional(string)
    databricks_account_id    = optional(string)
    databricks_e2_account_id = optional(string)
    full_access_role         = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

