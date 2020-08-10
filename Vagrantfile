# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  #original config.vm.box = "base"
  config.vm.box = "debian/contrib-stretch64"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  config.vm.network "forwarded_port", guest: 3306, host: 33060 #mysql
  config.vm.network "forwarded_port", guest: 27017, host: 27017 #mongodb
  config.vm.network "forwarded_port", guest: 15672, host: 15672 #mongodb
  config.vm.network "forwarded_port", guest: 5672, host: 5672 #mongodb
  config.vm.network "forwarded_port", guest: 5601, host: 5601 #kibana
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 8500, host: 8500
  config.vm.network "forwarded_port", guest: 30000, host: 30000
  config.vm.network "forwarded_port", guest: 30001, host: 30001
  config.vm.network "forwarded_port", guest: 30002, host: 30002
  config.vm.network "forwarded_port", guest: 30003, host: 30003
  config.vm.network "forwarded_port", guest: 30004, host: 30004
  config.vm.network "forwarded_port", guest: 30005, host: 30005
  config.vm.network "forwarded_port", guest: 30006, host: 30006
  config.vm.network "forwarded_port", guest: 30007, host: 30007
  config.vm.network "forwarded_port", guest: 30008, host: 30008
  config.vm.network "forwarded_port", guest: 30500, host: 30500
  config.vm.network "forwarded_port", guest: 30501, host: 30501
  config.vm.network "forwarded_port", guest: 30502, host: 30502
  config.vm.network "forwarded_port", guest: 30078, host: 30078

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"
  # config.vm.synced_folder "./work", "/home/vagrant/work", id: "work", create: true, mount_options: ["dmode=777,fmode=777"]
  config.vm.synced_folder "D:\\repo", "/home/vagrant/repo", id: "repo", create: true, mount_options: ["dmode=777,fmode=777"]
  config.vm.synced_folder "D:\\go", "/home/vagrant/go", id: "go", create: true, mount_options: ["dmode=777,fmode=777"]

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
  #   # Customize the amount of memory on the VM:
    vb.memory = "4096"
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL

  # ========> Initiate Ubuntu
  config.vm.provision "shell", path: "provision/prescript.sh"

  # ========> Initiate Node and PHP
  config.vm.provision "shell", path: "provision/nodejs.sh"
  config.vm.provision "shell", path: "provision/php.sh"

  # ========> Initiate Ruby and Rails
  config.vm.provision "shell", path: "provision/install-rvm.sh", args: "stable", privileged: false
  config.vm.provision "shell", path: "provision/install-ruby.sh", args: "2.6.5", privileged: false
  config.vm.provision "shell", path: "provision/install-ruby.sh", args: "2.6.6", privileged: false
  config.vm.provision "shell", path: "provision/install-rails.sh", privileged: false

  # ========> Initiate SSH
  #config.vm.provision "file", source: "provision/.ssh/key", destination: "/home/vagrant/.ssh/key"
  #config.vm.provision "file", source: "provision/.ssh/key.pub", destination: "/home/vagrant/.ssh/key.pub"
  #config.vm.provision "shell", path: "provision/ssh.sh"
  #mounts is personal
  config.vm.provision "shell", path: "provision/mounts.sh", run: "always"

  # ========> Setup Docker
  config.vm.provision "shell", path: "provision/docker.sh"
  config.vm.provision "docker" do |d|
    d.post_install_provision "shell", inline:"docker network create vagrant"

    d.run "memcached:alpine",
      auto_assign_name: false,
      args: "--network vagrant --name memcached -p 11211:11211"

    d.run "redis:alpine",
      auto_assign_name: false,
      args: "--network vagrant --name redis     -p 6379:6379"

    d.run "mysql:5",
      auto_assign_name: false,
      args: "--network vagrant --name mysql     -p 3306:3306 -e MYSQL_ROOT_PASSWORD=secret -v /home/vagrant/database/mysql:/var/lib/mysql"
      # args: "--network vagrant --name mysql     -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -v /home/vagrant/database/mysql:/var/lib/mysql"

    d.run "mongo:3.6.14",
      restart: "no",
      auto_assign_name: false,
      args: "--network vagrant --name mongo     -p 27017:27017 -v /home/vagrant/database/mongo/db:/data/db -v /home/vagrant/database/mongo/log:/data/log"

    d.run "rabbitmq:3-management-alpine",
      restart: "no",
      auto_assign_name: false,
      args: "--network vagrant --name rabbitmq -p 5672:5672 -p 15672:15672 --hostname 0.0.0.0 -v /home/vagrant/database/rabbitmq:/var/lib/rabbitmq"
  end

end
