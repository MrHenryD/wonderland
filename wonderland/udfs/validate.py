def country(name: str) -> str:
    """Validate Country

    Args:
        name (str): Country Name

    Returns:
        str: Validated Country Name
    """

    if isinstance(name, str):
        return name
    else:
        return None
