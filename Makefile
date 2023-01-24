
clean:
	rm -rf docs

serve:
	mkdocs serve -a localhost:8081

serve-once:
	mkdocs serve -a localhost:8081 --no-livereload

debug:
	mkdocs serve -v -a localhost:8081

build:
	mkdocs build


# #run python code with array of versions
PY_VERSIONS = 3.8 3.9 3.10 3.11

installDepsAllPy:
	@echo "installing dependencies for all python versions"
	@for version in $(PY_VERSIONS); do \
		echo "installing dependencies for python $$version"; \
		python$$version -m pip install -r requirements.txt; \
	done

runAllPythons:
	@echo "Running mkdocs serve with all python versions"
	@for version in $(PY_VERSIONS); do \
		echo "Running mkdocs serve with python $$version"; \
		python$$version -m mkdocs build; \
	done