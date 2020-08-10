apt-get install -y build-essential curl

#Node.js v12.x Using Debian, as root
# curl -sL https://deb.nodesource.com/setup_14.x | bash -

#Node.js v12.x Using Debian, as root
curl -sL https://deb.nodesource.com/setup_12.x | bash -

#Node.js v11.x: Using Debian, as root
#curl -sL https://deb.nodesource.com/setup_11.x | bash -

#Node.js v10.x: Using Debian, as root
#curl -sL https://deb.nodesource.com/setup_10.x | bash -

#Node.js v8.x: # Using Debian, as root
#curl -sL https://deb.nodesource.com/setup_8.x | bash -

apt-get install -y nodejs
npm install -g yarn
