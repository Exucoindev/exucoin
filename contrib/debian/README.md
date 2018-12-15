
Debian
====================
This directory contains files used to package exucoind/exucoin-qt
for Debian-based Linux systems. If you compile exucoind/exucoin-qt yourself, there are some useful files here.

## exucoin: URI support ##


exucoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install exucoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your exucoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/exucoin128.png` to `/usr/share/pixmaps`

exucoin-qt.protocol (KDE)

