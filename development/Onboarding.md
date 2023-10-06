## Prerequisites
The project is based on 
1.	Frappe
2.	Angular
3.	Dockers
4.	….
## Software Installations for developers:
### Other software you may need
1.	Git (and related source control software)
2.	IDE (preferably VS Code with relevant extensions)
3.	Mobaxterm (for ssh to remote machines or containers)
## Ramp up and refence on Dockers
-	https://docker-curriculum.com/#getting-started
-	https://docker-curriculum.com/#webapps-with-docker
-	
### Windows
- Enable wsl on your windows 10 machine.. 
    - Follow instructions @ https://www.omgubuntu.co.uk/how-to-install-wsl2-on-windows-10 
- Create a user id for docker @ https://hub.docker.com and use it when required.. 
- Install DockerDesktop 
    - https://www.docker.com/products/docker-desktop/
    - This is a commercial software but can be used by small orgs or for personal use.
    - Install from above location by following instructions from the website.
    - Configuration

    ![Alt text](image.png)
    ![Alt text](image-1.png)
    ![Alt text](image-2.png)
    ![Alt text](image-3.png)
    ![Alt text](image-4.png)

OR
- RancherDesktop
    - Will investigate and provide if developers have trouble with installing or license issues on their workstations… 

- VS Code
    - Windows – install from https://code.visualstudio.com/download
    - Linux - see Ubuntu 22.04
    - Setup following extensions
        -	Dev Containers (extension)
        -	Remote Development (extension pack)
        -	Any other docker or git extensions.. 


### Ubuntu 22.04
- Following commands/instructions to setup required packages
```
    sudo apt install -y docker.io, containerd, curl, git, wget
    sudo systemctl enable docker.service
    sudo systemctl enable containerd.service
    sudo apt install docker-compose
```
- Follow instructions from https://github.com/docker/buildx to install docker-buildx extension for docker.
```
    wget https://az764295.vo.msecnd.net/stable/fdb98833154679dbaa7af67a5a29fe19e55c2b73/code_1.82.3-1696245001_amd64.deb 
```

- if above doesn't work, install by downloading latest code from https://code.visualstudio.com/download 
```
    sudo apt install code_1.82.3-1696245001_amd64.deb
```
- Create a user <developer> with following command
```
    sudo useradd <developer> -G sudo,docker --create-home
```
- login as <developer>


## Code Setup

### Frappe Bench
-	Since we plan to use dockers, we do not need explicit installation of 
    - pre-requisites for Frappe Bench
        - We expect these to be taken care by the “Dev Containers” via configuration

### Angular Repo
-	https://dev.azure.com/IntlApp 
    For access reach out to 

