# uses pip to upgrade latest pip version
# and install all needed packages from requirements.txt file
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	
#formats python code using python black (optional)
format:
	black *.py
	
#uses pylint to insure output gives only warning & error msgs
lint:
	pylint --disable=R,C hello.py

#use pytest library to perform testing (verbose output)	
test:
	python -m pytest -vv --cov=hello test_hello.py

all: install lint test
