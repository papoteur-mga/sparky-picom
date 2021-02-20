#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /usr/bin/sparky-picom
	rm -f /usr/bin/qmanage-picom
	rm -f /usr/share/applications/sparky-picom.desktop
	rm -f /usr/share/menu/sparky-picom
	rm -rf /usr/share/sparky/sparky-picom
	rm -f /opt/sparky/picom.conf
else
	cp bin/* /usr/bin/
	cp share/sparky-picom.desktop /usr/share/applications/
	cp share/sparky-picom /usr/share/menu/
	if [ ! -d /usr/share/sparky/sparky-picom ]; then
		mkdir -p /usr/share/sparky/sparky-picom
	fi
	cp lang/* /usr/share/sparky/sparky-picom/
	if [ ! -d /opt/sparky ]; then
		mkdir -p /opt/sparky
	fi
	cp opt/* /opt/sparky/ 
fi
