# curl -fsSL https://get.docker.com -o /tmp/get-docker.sh
# sh /tmp/get-docker.sh
# usermod -aG docker vagrant
mkdir -p /home/vagrant/database/mongo/db /home/vagrant/database/mongo/log /home/vagrant/database/mysql /home/vagrant/database/rabbitmq /home/vagrant/logs
echo 'export LOGS_PATH=/home/vagrant/logs' >> /home/vagrant/.bashrc
echo 'export NETWORK=vagrant' >> /home/vagrant/.bashrc

# chown -R vagrant:vagrant /home/vagrant/
# chmod -R 777 /home/vagrant/

# docker run -d --name memcached  -p 11211:11211  --restart always memcached:alpine
# docker run -d --name redis      -p 6379:6379    --restart always redis:alpine
# docker run -d --name mongo      -p 27017:27017  -v /home/vagrant/database/mongo/db:/data/db -v /home/vagrant/database/mongo/log:/data/log mongo:3.6.14
# docker run -d --name mysql      -p 3306:3306    --restart always -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -v /home/vagrant/database/mysql:/var/lib/mysql mysql:5
# docker run -d --name rabbitmq   -p 5672:5672 -p 15672:15672 --hostname 0.0.0.0 -v /home/vagrant/database/rabbitmq:/var/lib/rabbitmq rabbitmq:3-management-alpine

# docker network create vagrant
# docker network connect vagrant memcached
# docker network connect vagrant redis
# docker network connect vagrant mongo
# docker network connect vagrant mysql
# docker network connect vagrant rabbitmq

# docker run -d --name elasticsearch -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:7.7.1
# docker run -d --name kibana -p 5601:5601 kibana:7.7.1
# docker run -d --name fluentd -p 24224:24224 -p 24224:24224/udp fluentd:elastic

# docker network connect vagrant elasticsearch
# docker network connect vagrant kibana
# docker network connect vagrant fluentd
