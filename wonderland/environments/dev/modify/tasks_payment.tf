resource snowflake_task payment_task {
  name    = "payment_task"
  comment = "Processes payment data"

  database           = var.analytics_database
  schema             = var.payment_schema
  warehouse          = var.warehouse

  schedule      = "USING CRON 0 0 * * * UTC"
  sql_statement = file("../../../tasks/payment/payment_task.sql")

  user_task_timeout_ms = 600000
  enabled              = true

  # error_integration = ...
}
