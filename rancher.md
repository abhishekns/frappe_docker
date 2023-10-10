Rancher installation steps

source: https://docs.rancherdesktop.io/getting-started/installation/#linux

===============================================================


gpg key on dev@frappe-devm under
===============================================================
gpg: key 7AC32AA926067973 marked as ultimately trusted
gpg: directory '/home/dev/.gnupg/openpgp-revocs.d' created
gpg: revocation certificate stored as '/home/dev/.gnupg/openpgp-revocs.d/56D308E2AE98B1B47709ACDF7AC32AA926067973.rev'
public and secret key created and signed.

pub   rsa3072 2023-10-08 [SC] [expires: 2025-10-07]
      56D308E2AE98B1B47709ACDF7AC32AA926067973
uid                      Abhishek Sharma <abhishekn.sharma@gmail.com>
sub   rsa3072 2023-10-08 [E] [expires: 2025-10-07]
===============================================================

dev@frappe-devm:~$ pass init 56D308E2AE98B1B47709ACDF7AC32AA926067973
mkdir: created directory '/home/dev/.password-store/'
Password store initialized for 56D308E2AE98B1B47709ACDF7AC32AA926067973

===============================================================

Minikube for a local cluster to be used with deployment experiments.

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
===============================================================

Dependencies for minikube
sudo apt install kubelet
sudo apt install lvm2 ldmtool libdevmapper-dev



create/open file /etc/docker/daemon.json and ensure to add below json appropriately into existing, if already there.
---------------------------------------------------
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  }
}
---------------------------------------------------

create another file /etc/systemd/system/docker.service.d/docker.conf
and add below contents
-------------------------------------
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -s=devicemapper
-------------------------------------


systemctl enable kubelet.service
sudo systemctl restart docker.service
sudo systemctl start kubelet.service

ensure that when you start rancher desktop disable kubernetes else it will interfere witht he running docker engine

to start minikube

-------------
minikube start
-------------

when minikube is running docker daemon, though present will act as if it is not... :).. you can only run things on minikue or via rancher desktop.
your dev containers will also not start. 
Use this purely for development for deployment to cluster

