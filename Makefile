install:
	pip install -U pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C src/*.py src/*/*.py

format:
	black 1-Introduction/*/*.ipynb &&\
		black src/*.py

test:
	python -m pytest -vv -s --cov=functions src/test.py