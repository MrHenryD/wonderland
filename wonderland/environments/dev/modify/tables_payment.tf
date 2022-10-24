resource "snowflake_table" "user_dim" {
  database            = var.analytics_database
  schema              = var.payment_schema
  name                = "user_dim"
  comment             = "User Dimension Table"
  data_retention_days = var.data_retention_days
  change_tracking     = false

  column {
    name     = "id"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name     = "country"
    type     = "VARCHAR(16777216)"
    nullable = false
  }

  column {
    name     = "age"
    type     = "NUMBER(3,0)"
    nullable = true
  }

  column {
    name = "created_at"
    type = "TIMESTAMP_NTZ(9)"
    default {
      expression = "CURRENT_TIMESTAMP()"
    }
  }

  column {
    name = "updated_at"
    type = "TIMESTAMP_NTZ(9)"
    default {
      expression = "CURRENT_TIMESTAMP()"
    }
  }
}
