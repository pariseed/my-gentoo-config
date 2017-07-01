#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f"  ] && . "$f"
  done
  unset f
fi


xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

exec gnome-session




#if the file don't work rename it and put it in /etc/X11/xinit/xinitrc.d/ directory,
#and comment line 2-3-4-5-6-7-8-9-10-11-12 or remove it
