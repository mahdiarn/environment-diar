chmod 400 /home/vagrant/.ssh/key
chmod 400 /home/vagrant/.ssh/key.pub
echo 'eval $(ssh-agent -s)' >> /home/vagrant/.bashrc
echo 'ssh-add /home/vagrant/.ssh/key' >> /home/vagrant/.bashrc
echo 'export BASE64_PRIVATE_KEY=$(base64 -w 0 /home/vagrant/.ssh/key)' >> /home/vagrant/.bashrc
