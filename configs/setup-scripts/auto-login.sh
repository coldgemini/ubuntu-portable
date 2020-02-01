This works in Ubuntu and Raspbian, it probably works in any systemd distro.

mkdir -p /etc/systemd/system/getty@tty1.service.d/

Create a file at /etc/systemd/system/getty@tty1.service.d/autologin.conf with contents:

[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin USERNAME --noclear %I \$TERM

Replace USERNAME with the actual username to login.

You can now reboot and test this.

If you want to start something on startup, then create a file /etc/profile.d/10-runthing.sh with contents like:

if [ "$(tty)" = "/dev/tty1" ]; then
    THING
fi
