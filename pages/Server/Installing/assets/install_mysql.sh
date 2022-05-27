#!/usr/bin/env sh

# Transfer the packages
cd /usr/port/distfiles/
fetch http://ip.ncloud24.com/app/source_compile/mysql/mysql-4.0.26.tar.gz
fetch http://ip.ncloud24.com/app/source_compile/mysql/mysql-4.1.18.tar.gz

# Install first package
cd /usr/ports/databases/mysql40-client/ && make install clean

# Move package build and delete package
cd /usr/local/lib/ && mv mysql mysql.4.0.26_1
pkg_delete mysql-client-4.0.26_1

# Add build entry to local ldconfig
echo '/usr/local/lib/mysql-4.0.26_1' >> /usr/local/libdata/ldconfig

# Add entry to ldconfig and reload cache to avoid reboot
ldconfig -R /usr/local/lib/mysql-4.0.26_1

# Install the other package
cd /usr/ports/databases/mysql41-client/ && make install clean
