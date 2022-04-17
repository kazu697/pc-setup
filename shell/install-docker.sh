PASSWORD=$1
echo $PASSWORD | sudo -S apt update
echo $PASSWORD | sudo -S apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg
echo $PASSWORD | sudo -S apt-key add -
echo $PASSWORD | sudo -S add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
echo $PASSWORD | sudo -S apt update
apt-cache policy docker-ce
echo $PASSWORD | sudo -S apt install docker-ce
echo $PASSWORD | sudo -S systemctl status docker

USER=$(whoami)
echo $PASSWORD | sudo usermod -aG docker $USER
su - ${USER}