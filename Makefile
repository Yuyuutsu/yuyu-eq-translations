build:
	poetry install

lint:
	poetry run pylint eq_translations ./tests
	poetry run black --check eq_translations tests

format:
	poetry run black .

test:
	poetry run pytest --cov-config=.coveragerc --cov --cov-report html tests
