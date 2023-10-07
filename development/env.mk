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
APP_REPO:=https://w5mjy2svg3wgzjcjd64euaouoa5gkezldc5gma4fsxa6byirphoq@dev.azure.com/IntlApp/IntGKApp/_git/gurukula_international_app
APP_BRANCH:=master