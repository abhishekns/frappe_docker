# Default setting for the project
include env.mk

pyenv:
	pyenv install $(PYENV_VERSION)

setup:
	git config --global --add safe.directory /workspace
	$(NVM) use $(NVM_DEFAULT)
	bench init $(SKIP_REDIS_CONFIG_GEN) --frappe-branch $(FRAPPE_BRANCH_VERSION) frappe-bench
	./env/bin/pip install honcho supervisor
	echo "include ../frappe.mk" > ./frappe-bench/Makefile 


site-config:
	cd frappe-bench && bench set-mariadb-host mariadb
	cd frappe-bench && bench set-redis-cache-host redis://redis-cache:6379
	cd frappe-bench && bench set-redis-queue-host redis://redis-queue:6379
	cd frappe-bench && bench set-redis-socketio-host redis://redis-socketio:6379
	cd frappe-bench && ./env/bin/pip install honcho
	cd frappe-bench && sed -i '/redis/d' ./Procfile

purge:
	rm -rf frappe-bench

ignorecrlf:
	git config --global core.autocrlf true
