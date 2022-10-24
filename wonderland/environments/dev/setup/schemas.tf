resource snowflake_schema payment {
  database = snowflake_database.analytics.name
  name     = "PAYMENT"
  comment  = "Payment Schema"
}
