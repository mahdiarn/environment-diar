mkdir -p /home/vagrant/mount/repo/queue-service/node_modules /home/vagrant/repo/queue-service/node_modules
mkdir -p /home/vagrant/mount/repo/aws-sdk-service/node_modules /home/vagrant/repo/aws-sdk-service/node_modules
mkdir -p /home/vagrant/mount/repo/hit-mon-chan/node_modules /home/vagrant/repo/hit-mon-chan/node_modules

chown -R vagrant:vagrant /home/vagrant/mount/
chmod -R 777 /home/vagrant/mount/

mount --bind /home/vagrant/mount/repo/queue-service/node_modules /home/vagrant/repo/queue-service/node_modules
mount --bind /home/vagrant/mount/repo/aws-sdk-service/node_modules /home/vagrant/repo/aws-sdk-service/node_modules
mount --bind /home/vagrant/mount/repo/hit-mon-chan/node_modules /home/vagrant/repo/hit-mon-chan/node_modules
