noblacklist ~/.mozilla
noblacklist ~/.cache/mozilla
noblacklist ~/.xpdfrc
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

blacklist /media
blacklist /mnt
blacklist /srv
blacklist /var/backups

caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6,netlink
seccomp

whitelist ${DOWNLOADS}
mkdir ~/.mozilla
whitelist ~/.mozilla
mkdir ~/.cache/mozilla/firefox
whitelist ~/.cache/mozilla/firefox
whitelist ~/.pentadactylrc
whitelist ~/.pentadactyl
whitelist ~/.xpdfrc

include /etc/firejail/whitelist-common.inc

private-etc passwd,group,hostname,hosts,localtime,nsswitch.conf,resolv.conf,resolvconf/run/resolv.conf,gtk-2.0,gtk-3.0,fonts,firefox-esr,mime.types,mailcap,pulse
private-dev
private-tmp
