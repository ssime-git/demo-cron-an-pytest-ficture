build:
	docker build -t my-python-app .
	docker run -it --rm my-python-app

run-test:
	pytest

enter-container:
	docker run -it --rm my-python-app bash

install-cron:
	apt-get update && apt-get -y install cron

cron-status :
	service cron status

start-cron:
	service cron start

list-cron:
	crontab -e

install-nano:
	apt-get update && apt-get -y install nano