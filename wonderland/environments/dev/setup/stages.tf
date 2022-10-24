resource "snowflake_stage" "analytics_stage" {
  name        = "ANALYTICS_STAGE"
  database    = snowflake_database.analytics.name
  schema      = snowflake_schema.payment.name
}
