resource snowflake_role analyst {
  name    = "ANALYST"
  comment = "Analyst Role"

  # lifecycle {
  #   prevent_destroy = true
  # }
}

resource snowflake_database_grant analyst_database {
  database_name = snowflake_database.analytics.name
  privilege = "USAGE"
  roles = [
    snowflake_role.analyst.name
  ]
  with_grant_option = false
}

resource snowflake_schema_grant analyst_schema {
  database_name = snowflake_database.analytics.name
  privilege = "USAGE"
  roles = [
    snowflake_role.analyst.name
  ]
  on_future         = true
  with_grant_option = false
}


resource snowflake_table_grant analyst_table {
  database_name = snowflake_database.analytics.name
  schema_name   = snowflake_schema.payment.name
  privilege = "SELECT"
  roles = [
    snowflake_role.analyst.name
  ]
  on_future = true
}

resource snowflake_warehouse_grant analyst_warehouse {
  warehouse_name = snowflake_warehouse.compute_wh.name
  privilege      = "USAGE"

  roles = [
    snowflake_role.analyst.name
  ]

  with_grant_option = false
}

resource "snowflake_role_grants" "analyst_grants" {
  role_name = snowflake_role.analyst.name

  users = [
    "HDANG"
  ]
}
