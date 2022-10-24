resource snowflake_database_grant accountadmin_database {
  database_name = snowflake_database.analytics.name
  privilege = "MODIFY"
  roles = [
    "ACCOUNTADMIN"
  ]
}

resource snowflake_schema_grant accountadmin_schema {
  database_name = snowflake_database.analytics.name
  privilege = "MODIFY"
  roles = [
    "ACCOUNTADMIN"
  ]
  on_future         = true
}


resource snowflake_table_grant accountadmin_table {
  database_name = snowflake_database.analytics.name
  schema_name   = snowflake_schema.payment.name
  privilege = "OWNERSHIP"
  roles = [
    "ACCOUNTADMIN"
  ]
  on_future = true
}

resource snowflake_warehouse_grant accountadmin_warehouse {
  warehouse_name = snowflake_warehouse.compute_wh.name
  privilege      = "MODIFY"

  roles = [
    "ACCOUNTADMIN"
  ]
}

# resource snowflake_role_grants accountadmin_grants {
#   role_name = snowflake_role.analyst.name

#   users = []
# }
