resource "snowflake_database" "analytics" {
  name                        = "ANALYTICS_WH"
  comment                     = "default analytics database"
  data_retention_time_in_days = 1
}
