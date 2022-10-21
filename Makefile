SHELL := /bin/bash
LOCAL_VENV_NAME=.venv
PYTHON=python3.8
ROOT=wonderland

install:
	$(PYTHON) -m poetry install

test:
	poetry run pytest $(ROOT)

precommit:
	poetry run pre-commit
