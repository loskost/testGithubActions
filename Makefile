POETRY_VERSION=1.5.1

install:
	@python3 -m pip install poetry==$(POETRY_VERSION)
	@python3 -m poetry install --with main,dev,tests,lint
	@poetry run pre-commit install --hook-type pre-commit --hook-type pre-push --hook-type commit-msg

install_test:
	@python3 -m pip install poetry==$(POETRY_VERSION)
	@python3 -m poetry install --with main,tests

install_lint:
	@python3 -m pip install poetry==$(POETRY_VERSION)
	@python3 -m poetry install --with main,lint

test:
	@poetry run pytest

format:
	@poetry run ruff format

lint:
	@poetry run ruff check .
