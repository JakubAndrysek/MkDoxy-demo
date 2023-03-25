fixRelativeLinkDocs:
	sed  's/\.\/docs\/media/\.\/media/g'  README.md > docs/README.md
	# sed  's/\.\/docs\/media/\.\/media/g'  README.cs.md > docs/README.cs.md


# Docs
docs-build: fixRelativeLinkDocs
	@echo "Building docs..."
	mkdocs build

docs-clean:
	@echo "Cleaning docs..."
	rm -rf site

docs-serve: fixRelativeLinkDocs
	@echo "Serving docs..."
	mkdocs serve

docs-serve-once: fixRelativeLinkDocs
	@echo "Deploying docs..."
	mkdocs serve --no-livereload

docs-deploy: fixRelativeLinkDocs
	@echo "Deploying docs..."
	mkdocs gh-deploy --force


# Test python code with array of versions
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