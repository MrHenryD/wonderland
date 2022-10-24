SHELL := /bin/bash
LOCAL_VENV_NAME=.venv
PYTHON=python3.8
ROOT=wonderland
SNOWFLAKE_WAREHOUSE=compute_wh

export

install:
	$(PYTHON) -m poetry install

test:
	PYTHONPATH=$(ROOT) poetry run pytest $(ROOT)

precommit:
	poetry run pre-commit
