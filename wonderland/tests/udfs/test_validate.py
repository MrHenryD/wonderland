import udfs.validate as validate


def test_validate_country():
    assert validate.country("Canada") == "Canada"
    assert not validate.country(1234)
