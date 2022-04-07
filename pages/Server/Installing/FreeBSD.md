# Installing and Preparing FreeBSD Environment

## Images
You can find the installation disc images at
http://ftp-archive.freebsd.org/pub/FreeBSD-Archive/old-releases/i386/ISO-IMAGES/5.5/


## Steps


### Configure Network Interface
Enter the system installation menu by typing `sysinstall`,
pick the **Configuration** option then **Networking** and **Interfaces**,
pick the desired adapter (em0, em1 and so on) and configure to match your settings


### Enable SSHD
Edit the file /etc/rc.conf and enable sshd by adding/modifying to:
`sshd_enable="YES"`


### Enable SSH Root Login
Edit the file /etc/ssh/sshd_config and enable root login by modifying to:
`PermitRootLogin yes`


### Set a password
Change the root password by typing `passwd` and type a password

**Why?**: Connecting trough SFTP requires that the user you are trying to log in on
has a password, otherwise it will wait a long time and deny authentication

### Notes
**Note 1**: Restarting services like `sshd` or network routing/resolving might
not be enough, reboot after configuration to ensure taking effect

**Note 2**: Connecting trough SFTP might take some time, the reason
is unknown, but is known that restarting networking by executing
`/etc/rc.d/netif restart` in greater FreeBSD version temporarily fixes
the issue for the lifetime of the machine session


