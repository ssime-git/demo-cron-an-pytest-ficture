build:
	docker build -t my-python-app2 .
	docker run -it --rm my-python-app2

run-test:
	pytest

enter-container:
	docker run -it --rm my-python-app2 bash

install-cron:
	apt-get update && apt-get -y install cron

cron-status :
	service cron status

start-cron:
	service cron start

edit-cron:
	crontab -e

install-nano:
	apt-get update && apt-get -y install nano
	export EDITOR=nano

list-cron:
	crontab -l