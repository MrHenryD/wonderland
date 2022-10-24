import os

import snowflake.snowpark.functions as sf
import snowflake.snowpark.types as st
import udfs.validate as validate
from snowflake.snowpark import Session

if __name__ == "__main__":
    connection_parameters = {
        "account": os.environ["account"],
        "user": os.environ["user"],
        "password": os.environ["password"],
        "role": os.environ["role"],
        "warehouse": os.environ["warehouse"],
        "database": os.environ["database"],
        "schema": os.environ["schema"],
    }
    session = Session.builder.configs(connection_parameters).create()

    register = [
        sf.udf(
            func=lambda c: validate.country(c),
            return_type=st.StringType(),
            input_types=[st.StringType()],
            name="validate_country",
            session=session,
            # is_permanent=True,
        )
    ]
