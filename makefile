all: clean push build deploy

clean:
	-rm -rf dist
	-rm -rf stout.*

push:
	git push origin main

build:
	python setup.py sdist

deploy: 
	twine upload dist/*

i: clean build
	python3 -m pip uninstall stout -y
	python3 -m pip install dist/stout-$(v).tar.gz