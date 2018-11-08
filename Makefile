PIP="venv/bin/pip"
TOX="venv/bin/tox"
PYTHON="venv/bin/python"
TWINE="venv/bin/twine"

clean:
	@find . -name *.pyc -delete
	@find . -name __pycache__ -type d -delete
	@rm -rf venv dist build *.egg-info

virtualenv:
	test -d venv || virtualenv -p python3.6 venv
	$(PIP) install -U pip

test: clean virtualenv
	$(PIP) install -U tox
	$(TOX)

package: clean virtualenv
	$(PIP) install -U setuptools wheel
	$(PYTHON) setup.py sdist bdist_wheel

publish: package
	$(PIP) install -U twine
	$(TWINE) upload dist/*
