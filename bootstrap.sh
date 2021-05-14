sudo apt update
sudo apt install python3-pip build-essential -y
#cp -R /vagrant/* ~/
git clone https://github.com/michalke-it/CiaB.git
cd ~/CiaB/automation-tools/comac-in-a-box
export KUBESPRAY_VERSION=release-2.15
#export DOCKER_VERSION=19.03
export K8S_VERSION=v1.19.10
#export K8S_VERSION=v1.18.0
export HELM_VERSION=v3.5.3
make
make test
