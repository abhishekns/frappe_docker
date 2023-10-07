# Default setting for the project

PYENV_VERSION:=3.10.5
NVM_DEFAULT:=v14
FRAPPE_BRANCH_VERSION:=version-14
NVM:=. ${HOME}/.nvm/nvm.sh && nvm 

SKIP_REDIS_CONFIG_GEN=--skip-redis-config-generation
SITE:=development.localhost
MARIADB_PASSWD=123
ADMIN_PASSWD=admin

APP_NAME:=gurukala_internation_app
APP_REPO:=git@ssh.dev.azure.com:v3/IntlApp/IntGKApp/gurukula_international_app
APP_BRANCH:=master
