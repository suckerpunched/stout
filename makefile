clean:
	-rm -rf dist
	-rm -rf stout.*

deploy: clean
	git push origin main
	python setup.py sdist
	twine upload dist/*