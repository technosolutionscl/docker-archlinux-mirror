#!/bin/sh

cd /archlinux_mirror

RSYNC=/usr/bin/rsync

MIRROR=rsync://mirror.sergal.org/archlinux/
MIRROR=rsync://mirror.its.dal.ca/archlinux/
MIRROR=rsync://mirror.csclub.uwaterloo.ca/archlinux/
MIRROR=rsync://muug.ca/mirror/archlinux/
#MIRROR=rsync://mirror.rit.edu/archlinux/

OPTIONS=-"rtlvH --delete-after --delay-updates --safe-links --max-delete=3000"

$RSYNC $OPTIONS $MIRROR ./ > /dev/null

date > __last_sync

