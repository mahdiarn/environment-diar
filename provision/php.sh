apt install ca-certificates apt-transport-https
wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -
echo "deb https://packages.sury.org/php/ stretch main" | tee /etc/apt/sources.list.d/php.list
# echo "deb https://packages.sury.org/php/ buster main" | tee /etc/apt/sources.list.d/php.list
apt-get update

apt-get purge -y php7*
apt-get install -y zip unzip php7.0-dev php7.0-mbstring php7.0-mysql php7.0-pdo php7.0-curl php7.0-json php7.0-xmlrpc php7.0-zip php7.0-gd php-mongodb php-intl php7.0-bcmath php7.0-mcrypt php7.0-bz2 php7.0-xml
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
# composer global require "laravel/lumen-installer"
echo 'export PATH="$PATH:$HOME/.config/composer/vendor/bin"' >> /home/vagrant/.bashrc

# Note, selecting 'php7.0-apcu' for glob 'php7*'
# Note, selecting 'php7.0-exif' for glob 'php7*'
# Note, selecting 'php7.0-xmlrpc' for glob 'php7*'
# Note, selecting 'php7.0-simplexml' for glob 'php7*'
# Note, selecting 'php7.0-bz2' for glob 'php7*'
# Note, selecting 'php7.0-cgi' for glob 'php7*'
# Note, selecting 'php7.0-cli' for glob 'php7*'
# Note, selecting 'php7.0-sockets' for glob 'php7*'
# Note, selecting 'php7.0-igbinary' for glob 'php7*'
# Note, selecting 'php7.0-dba' for glob 'php7*'
# Note, selecting 'php7.0-dev' for glob 'php7*'
# Note, selecting 'php7.0-http' for glob 'php7*'
# Note, selecting 'php7.0-dom' for glob 'php7*'
# Note, selecting 'php7.0-sysvmsg' for glob 'php7*'
# Note, selecting 'php7.0-remctl' for glob 'php7*'
# Note, selecting 'php7.0-memcache' for glob 'php7*'
# Note, selecting 'php7.0-fpm' for glob 'php7*'
# Note, selecting 'php7.0-gd' for glob 'php7*'
# Note, selecting 'php7.0-ftp' for glob 'php7*'
# Note, selecting 'php7.0-gmp' for glob 'php7*'
# Note, selecting 'php7.0-libsodium' for glob 'php7*'
# Note, selecting 'php7.0-stomp' for glob 'php7*'
# Note, selecting 'php7.0-opcache' for glob 'php7*'
# Note, selecting 'php7.0-raphf' for glob 'php7*'
# Note, selecting 'php7.0' for glob 'php7*'
# Note, selecting 'php7.0-pspell' for glob 'php7*'
# Note, selecting 'php7.0-sysvsem' for glob 'php7*'
# Note, selecting 'php7.0-calendar' for glob 'php7*'
# Note, selecting 'php7.0-sysvshm' for glob 'php7*'
# Note, selecting 'php7.0-recode' for glob 'php7*'
# Note, selecting 'php7.0-fileinfo' for glob 'php7*'
# Note, selecting 'php7cc' for glob 'php7*'
# Note, selecting 'php7.0-propro' for glob 'php7*'
# Note, selecting 'php7.0-gnupg' for glob 'php7*'
# Note, selecting 'php7.0-common' for glob 'php7*'
# Note, selecting 'php7.0-posix' for glob 'php7*'
# Note, selecting 'php7.0-iconv' for glob 'php7*'
# Note, selecting 'php7.0-pdo-firebird' for glob 'php7*'
# Note, selecting 'php7.0-msgpack' for glob 'php7*'
# Note, selecting 'php7.0-gearman' for glob 'php7*'
# Note, selecting 'php7.0-bcmath' for glob 'php7*'
# Note, selecting 'php7.0-sqlite3' for glob 'php7*'
# Note, selecting 'php7.0-pdo' for glob 'php7*'
# Note, selecting 'php7.0-uuid' for glob 'php7*'
# Note, selecting 'php7.0-tidy' for glob 'php7*'
# Note, selecting 'php7.0-xdebug' for glob 'php7*'
# Note, selecting 'php7.0-rrd' for glob 'php7*'
# Note, selecting 'php7.0-wddx' for glob 'php7*'
# Note, selecting 'php7.0-pdo-pgsql' for glob 'php7*'
# Note, selecting 'php7.0-smbclient' for glob 'php7*'
# Note, selecting 'php7.0-memcached' for glob 'php7*'
# Note, selecting 'php7.0-json' for glob 'php7*'
# Note, selecting 'php7.0-mysqlnd' for glob 'php7*'
# Note, selecting 'php7.0-phar' for glob 'php7*'
# Note, selecting 'php7.0-mbstring' for glob 'php7*'
# Note, selecting 'php7.0-readline' for glob 'php7*'
# Note, selecting 'php7.0-xml' for glob 'php7*'
# Note, selecting 'php7.0-xsl' for glob 'php7*'
# Note, selecting 'php7.0-yac' for glob 'php7*'
# Note, selecting 'php7.0-curl' for glob 'php7*'
# Note, selecting 'php7.0-zip' for glob 'php7*'
# Note, selecting 'php7.0-zmq' for glob 'php7*'
# Note, selecting 'php7.0-mailparse' for glob 'php7*'
# Note, selecting 'php7.0-ldap' for glob 'php7*'
# Note, selecting 'php7.0-pgsql' for glob 'php7*'
# Note, selecting 'php7.0-shmop' for glob 'php7*'
# Note, selecting 'php7.0-mcrypt' for glob 'php7*'
# Note, selecting 'php7.0-imap' for glob 'php7*'
# Note, selecting 'php7.0-intl' for glob 'php7*'
# Note, selecting 'php7.0-gmagick' for glob 'php7*'
# Note, selecting 'php7.0-xmlwriter' for glob 'php7*'
# Note, selecting 'php7.0-uploadprogress' for glob 'php7*'
# Note, selecting 'php7.0-ctype' for glob 'php7*'
# Note, selecting 'php7.0-pdo-sqlite' for glob 'php7*'
# Note, selecting 'php7.0-enchant' for glob 'php7*'
# Note, selecting 'php7.0-odbc' for glob 'php7*'
# Note, selecting 'php7.0-gettext' for glob 'php7*'
# Note, selecting 'php7.0-pdo-odbc' for glob 'php7*'
# Note, selecting 'php7.0-geoip' for glob 'php7*'
# Note, selecting 'php7.0-mysqli' for glob 'php7*'
# Note, selecting 'php7.0-tideways' for glob 'php7*'
# Note, selecting 'php7.0-yaml' for glob 'php7*'
# Note, selecting 'php7.0-pdo-mysql' for glob 'php7*'
# Note, selecting 'php7.0-snmp' for glob 'php7*'
# Note, selecting 'php7.0-redis' for glob 'php7*'
# Note, selecting 'php7.0-soap' for glob 'php7*'
# Note, selecting 'php7.0-sybase' for glob 'php7*'
# Note, selecting 'php7.0-solr' for glob 'php7*'
# Note, selecting 'php7.0-xmlreader' for glob 'php7*'
# Note, selecting 'php7.0-oauth' for glob 'php7*'
# Note, selecting 'php7.0-phpdbg' for glob 'php7*'
# Note, selecting 'php7.0-ssh2' for glob 'php7*'
# Note, selecting 'php7.0-imagick' for glob 'php7*'
# Note, selecting 'php7.0-pinba' for glob 'php7*'
# Note, selecting 'php7.0-tokenizer' for glob 'php7*'
# Note, selecting 'php7.0-radius' for glob 'php7*'
# Note, selecting 'php7.0-mongodb' for glob 'php7*'
# Note, selecting 'php7.0-pdo-dblib' for glob 'php7*'
# Note, selecting 'php7.0-mysql' for glob 'php7*'
# Note, selecting 'php7.0-interbase' for glob 'php7*'
# Note, selecting 'php7.0-amqp' for glob 'php7*'
# Note, selecting 'php-amqp' instead of 'php7.0-amqp'
# Note, selecting 'php-apcu' instead of 'php7.0-apcu'
# Note, selecting 'php-gearman' instead of 'php7.0-gearman'
# Note, selecting 'php-geoip' instead of 'php7.0-geoip'
# Note, selecting 'php-gmagick' instead of 'php7.0-gmagick'
# Note, selecting 'php-gnupg' instead of 'php7.0-gnupg'
# Note, selecting 'php-igbinary' instead of 'php7.0-igbinary'
# Note, selecting 'php-imagick' instead of 'php7.0-imagick'
# Note, selecting 'php-libsodium' instead of 'php7.0-libsodium'
# Note, selecting 'php-mailparse' instead of 'php7.0-mailparse'
# Note, selecting 'php-memcache' instead of 'php7.0-memcache'
# Note, selecting 'php-memcached' instead of 'php7.0-memcached'
# Note, selecting 'php-mongodb' instead of 'php7.0-mongodb'
# Note, selecting 'php-msgpack' instead of 'php7.0-msgpack'
# Note, selecting 'php-oauth' instead of 'php7.0-oauth'
# Note, selecting 'php-http' instead of 'php7.0-http'
# Note, selecting 'php-pinba' instead of 'php7.0-pinba'
# Note, selecting 'php-propro' instead of 'php7.0-propro'
# Note, selecting 'php-radius' instead of 'php7.0-radius'
# Note, selecting 'php-raphf' instead of 'php7.0-raphf'
# Note, selecting 'php-redis' instead of 'php7.0-redis'
# Note, selecting 'php-rrd' instead of 'php7.0-rrd'
# Note, selecting 'php-smbclient' instead of 'php7.0-smbclient'
# Note, selecting 'php-solr' instead of 'php7.0-solr'
# Note, selecting 'php-ssh2' instead of 'php7.0-ssh2'
# Note, selecting 'php-stomp' instead of 'php7.0-stomp'
# Note, selecting 'php-uploadprogress' instead of 'php7.0-uploadprogress'
# Note, selecting 'php-uuid' instead of 'php7.0-uuid'
# Note, selecting 'php-yac' instead of 'php7.0-yac'
# Note, selecting 'php-yaml' instead of 'php7.0-yaml'
# Note, selecting 'php-zmq' instead of 'php7.0-zmq'
# Note, selecting 'php7.0-common' instead of 'php7.0-calendar'
# Note, selecting 'php7.0-common' instead of 'php7.0-ctype'
# Note, selecting 'php7.0-common' instead of 'php7.0-exif'
# Note, selecting 'php7.0-common' instead of 'php7.0-fileinfo'
# Note, selecting 'php7.0-common' instead of 'php7.0-ftp'
# Note, selecting 'php7.0-common' instead of 'php7.0-gettext'
# Note, selecting 'php7.0-common' instead of 'php7.0-iconv'
# Note, selecting 'php7.0-common' instead of 'php7.0-pdo'
# Note, selecting 'php7.0-common' instead of 'php7.0-phar'
# Note, selecting 'php7.0-common' instead of 'php7.0-posix'
# Note, selecting 'php7.0-common' instead of 'php7.0-shmop'
# Note, selecting 'php7.0-common' instead of 'php7.0-sockets'
# Note, selecting 'php7.0-common' instead of 'php7.0-sysvmsg'
# Note, selecting 'php7.0-common' instead of 'php7.0-sysvsem'
# Note, selecting 'php7.0-common' instead of 'php7.0-sysvshm'
# Note, selecting 'php7.0-common' instead of 'php7.0-tokenizer'
# Note, selecting 'php7.0-interbase' instead of 'php7.0-pdo-firebird'
# Note, selecting 'php7.0-mysql' instead of 'php7.0-mysqli'
# Note, selecting 'php7.0-mysql' instead of 'php7.0-mysqlnd'
# Note, selecting 'php7.0-mysql' instead of 'php7.0-pdo-mysql'
# Note, selecting 'php7.0-odbc' instead of 'php7.0-pdo-odbc'
# Note, selecting 'php7.0-pgsql' instead of 'php7.0-pdo-pgsql'
# Note, selecting 'php7.0-sqlite3' instead of 'php7.0-pdo-sqlite'
# Note, selecting 'php7.0-sybase' instead of 'php7.0-pdo-dblib'
# Note, selecting 'php7.0-xml' instead of 'php7.0-dom'
# Note, selecting 'php7.0-xml' instead of 'php7.0-simplexml'
# Note, selecting 'php7.0-xml' instead of 'php7.0-wddx'
# Note, selecting 'php7.0-xml' instead of 'php7.0-xmlreader'
# Note, selecting 'php7.0-xml' instead of 'php7.0-xmlwriter'
# Note, selecting 'php-remctl' instead of 'php7.0-remctl'
# Note, selecting 'php-tideways' instead of 'php7.0-tideways'
# Note, selecting 'php-xdebug' instead of 'php7.0-xdebug'
# Package 'php7cc' is not installed, so not removed
# Package 'php7.0' is not installed, so not removed
# Package 'php7.0-bcmath' is not installed, so not removed
# Package 'php7.0-bz2' is not installed, so not removed
# Package 'php7.0-cgi' is not installed, so not removed
# Package 'php7.0-cli' is not installed, so not removed
# Package 'php7.0-common' is not installed, so not removed
# Package 'php7.0-curl' is not installed, so not removed
# Package 'php7.0-dba' is not installed, so not removed
# Package 'php7.0-dev' is not installed, so not removed
# Package 'php7.0-enchant' is not installed, so not removed
# Package 'php7.0-fpm' is not installed, so not removed
# Package 'php7.0-gd' is not installed, so not removed
# Package 'php7.0-gmp' is not installed, so not removed
# Package 'php7.0-imap' is not installed, so not removed
# Package 'php7.0-interbase' is not installed, so not removed
# Package 'php7.0-intl' is not installed, so not removed
# Package 'php7.0-json' is not installed, so not removed
# Package 'php7.0-ldap' is not installed, so not removed
# Package 'php7.0-mbstring' is not installed, so not removed
# Package 'php7.0-mcrypt' is not installed, so not removed
# Package 'php7.0-mysql' is not installed, so not removed
# Package 'php7.0-odbc' is not installed, so not removed
# Package 'php7.0-opcache' is not installed, so not removed
# Package 'php7.0-pgsql' is not installed, so not removed
# Package 'php7.0-phpdbg' is not installed, so not removed
# Package 'php7.0-pspell' is not installed, so not removed
# Package 'php7.0-readline' is not installed, so not removed
# Package 'php7.0-recode' is not installed, so not removed
# Package 'php7.0-snmp' is not installed, so not removed
# Package 'php7.0-soap' is not installed, so not removed
# Package 'php7.0-sqlite3' is not installed, so not removed
# Package 'php7.0-sybase' is not installed, so not removed
# Package 'php7.0-tidy' is not installed, so not removed
# Package 'php7.0-xml' is not installed, so not removed
# Package 'php7.0-xmlrpc' is not installed, so not removed
# Package 'php7.0-xsl' is not installed, so not removed
# Package 'php7.0-zip' is not installed, so not removed
# 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
