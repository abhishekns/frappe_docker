# Default setting for the project

PYENV_VERSION:=3.10.5
NVM_DEFAULT:=v14
FRAPPE_BRANCH_VERSION:=version-14
NVM:=. ${HOME}/.nvm/nvm.sh && nvm 

SKIP_REDIS_CONFIG_GEN=--skip-redis-config-generation
SITE:=dev.localhost
MARIADB_PASSWD=123
ADMIN_PASSWD=admin

APP_NAME:=
APP_REPO:=
APP_BRANCH:=
