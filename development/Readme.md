Added Makefile to support setup and development configuration as well as a common environment.

Steps to setup your dev environment
Ensure to go through the [Onboarding](Onboarding.md) prior to starting here.. 

```
    git clone https://github.com/abhishekns/frappe_docker.git
    code frappe_docker
```

Ctrl + Shift + P --> Dev Containers: Reopen in Containers

This should drop you in a container environment and all the necessary tools to start your development.

Start a new terminal and run below commands to setup your development. See the *make target* topics to understand what each of the targets will do. 
 

```
    make pyenv
    make setup
```

The above should setup a python environment for use during the development.
In case you see too many file changes in *Git*, run **make ignorecrlf** to ignore whitespace changes due to crlf.

In VS Code select the interpreter to point to this environment.

```
    cd frappe-bench
    make new-site
    make site-config
    make dev-config
    make app
```

## make targets in development folder

- setup
    - setup frappe bench and other setup.

- site-config
    - setup the site configuration

- purge
    - delete bench and sites

## make targets in frappe-bench folder

- new-site
    - create the new site for development

- site-config
    - configure the site settings


- dev-config
    - create development configuration for the site.

- app
    - setup the application in the site.