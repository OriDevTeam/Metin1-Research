# Installing Libraries (incomplete)
[//]: (TODO Look further into how installing from older ports)

# Compatible Ports

Source: http://ftp-archive.freebsd.org/pub/FreeBSD-Archive/old-releases/i386/5.5-RELEASE/ports/ports.tgz


## Fetching and Extracting Ports

cd root

fetch http://ftp-archive.freebsd.org/pub/FreeBSD-Archive/old-releases/i386/5.5-RELEASE/ports/ports.tgz
mkdir -p /root/5.5/

cat ports.tgz | tar --unlink -xpzf - -C 
