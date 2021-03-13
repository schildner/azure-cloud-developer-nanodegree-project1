setup:
	python3 -m venv ~/.udacity-cloud-developer

install:
	. ~/.udacity-cloud-developer/bin/activate \
	    && pip install --upgrade pip \
		&& pip install -r requirements.txt

test:
	python -m pytest -vv --cov=.
	#python -m pytest --nbval notebook.ipynb

lint:
	pylint --disable=R,C,W1203,W0702 application.py

all: install lint test