include ../env.mk

site-config:
	bench set-mariadb-host maridadb
	bench set-redis-cache-host redis://redis-cache:6379
	bench set-redis-queue-host redis://redis-queue:6379
	bench set-redis-socketio-host redis://redis-socketio:6379
	./env/bin/pip install honcho
	sed -i '/redis/d' ./Procfile

new-site:
	bench new-site $(SITE) --mariadb-root-password $(MARIADB_PASSWD) --admin-password $(ADMIN_PASSWD) 

dev-config:
	bench --site $(SITE) set-config developer_mode 1
	bench --site $(SITE) clear-cache

get-app:
	# --branch is optional, use it to point to branch on custom app repository
	bench get-app --branch $(APP_BRANCH) $(APP_REPO)

install-app:
	bench --site $(SITE) install-app $(APP_NAME)

	