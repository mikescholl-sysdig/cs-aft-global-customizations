resource "aws_s3_account_public_access_block" "block_all_public" {
  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets  = true
}

resource "aws_budgets_budget" "total_cost" {
  name              = "budget-total-monthly"
  budget_type       = "COST"
  limit_amount      = "275"
  limit_unit        = "USD"
  time_period_end   = "2087-06-15_00:00"
  time_period_start = "2022-06-01_00:00"
  time_unit         = "MONTHLY"
}