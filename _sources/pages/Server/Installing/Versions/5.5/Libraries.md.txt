# Installing Libraries


## MySQL 4.0.26

Mirrors:
 - ncloud24: [http://ip.ncloud24.com/app/source_compile/mysql/mysql-4.0.26.tar.gz](http://ip.ncloud24.com/app/source_compile/mysql/mysql-4.0.26.tar.gz)


## MySQL 4.1.18

Mirrors:
 - ncloud24: [http://ip.ncloud24.com/app/source_compile/mysql/mysql-4.1.18.tar.gz](http://ip.ncloud24.com/app/source_compile/mysql/mysql-4.1.18.tar.gz)
 - nust: [http://download.nust.na/pub2/openpkg1/sources/DST/mysql/mysql-4.1.18.tar.gz](http://download.nust.na/pub2/openpkg1/sources/DST/mysql/mysql-4.1.18.tar.gz)
 - uni-erlangen: [http://wiki.km3net.physik.uni-erlangen.de/tools/distfiles/mysql/mysql-4.1.18.tar.gz](http://wiki.km3net.physik.uni-erlangen.de/tools/distfiles/mysql/mysql-4.1.18.tar.gz)


## Installing
To install both packages we will need to install one then move
the built files and delete the installed package then install the
other package

This is done because installing the same packages with different
versions produces conflicts

**Note:** This could be avoided by installing with `ports-mgmt/poudriere`
but it is only available since FreeBSD 8


## Commands/Script
You can install by running as a script or by manually
copying the commands

{download}`install_mysql.sh <assets/install_mysql.sh>`
````shell
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
````

