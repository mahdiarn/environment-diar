apt-get update
sudo apt-mark hold grub*
apt-get upgrade -y
apt-get install -y build-essential curl apt-transport-https ca-certificates gnupg2 software-properties-common gcc g++ make git screen default-libmysqlclient-dev libcurl3-dev gnupg2
