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

# do not do any of below, if you don't know what you are doing :)
rancher:
	docker run -d --name=rancher-server --restart=unless-stopped -p 80:80 -p 443:443 --privileged rancher/rancher:$(RANCHER_VERSION)


minikube:
	minikube start


