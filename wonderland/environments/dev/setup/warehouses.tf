resource snowflake_warehouse compute_wh {
  name           = "compute_wh"
  comment        = "default compute warehouse"
  warehouse_size = "x-small"

  auto_resume         = "true"
  auto_suspend        = 300
  initially_suspended = "true"
}
