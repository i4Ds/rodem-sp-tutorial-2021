setup: ## Sets up the dev environment
	./setup.sh

install:
	( \
	  source .venv/bin/activate; \
 	  pip install -r requirements.txt;
	)

pip-freeze:
	pip freeze > requirements.txt

notebook:
	( \
	  source .venv/bin/activate; \
 	  trap "deactivate; exit" INT; \
	  jupyter notebook; \
	)