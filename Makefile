install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install-test:
	pip install --upgrade pip &&\
		pip install -r requirements-test.txt

install-local:
	pip install --upgrade pip &&\
		pip install -r requirements-local.txt

format:
	black *.py

lint:
	pylint --disable=R,C main.py

test:
	python -m pytest -vv --cov=main main_test.py
