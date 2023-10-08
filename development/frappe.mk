include ../env.mk

site-config:
	bench set-mariadb-host mariadb
	bench set-redis-cache-host redis-cache:6379
	bench set-redis-queue-host redis-queue:6379
	bench set-redis-socketio-host redis-socketio:6379
	sed -i '/redis/d' ./Procfile

new-site:
	bench new-site $(SITE) --mariadb-root-password $(MARIADB_PASSWD) --admin-password $(ADMIN_PASSWD) 
	bench use $(SITE)

del-site:
	rm -rf sites/$(SITE)

dev-config:
	bench --site $(SITE) set-config developer_mode 1
	bench --site $(SITE) clear-cache

get-app:
	# --branch is optional, use it to point to branch on custom app repository
	bench get-app --branch $(APP_BRANCH) $(APP_REPO) --resolve-deps

install-app:
	bench --site $(SITE) install-app $(APP_NAME)

	