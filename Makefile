build:
	docker build -t my-python-app .
	docker run -it --rm my-python-app

run-test:
	pytest