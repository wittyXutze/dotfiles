# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export PATH=$PATH:~/.platformio/penv/bin

export PCB=/home/withold/Leiterplatten
export KICAD_CONFIG_HOME=$PCB/KiCAD_env

#/usr/bin/setxkbmap -layout de
#/usr/bin/setxkbmap -option caps:escape
#/usr/bin/xcape -e 'Caps_Lock=Escape' -t 100

# Make Caps Lock an additional Esc and both Shift Keys toggle Caps Lock
#setxkbmap -option caps:escape,shift:both_capslock &
export DOTNET_ROOT="$HOME/dotnet"
export PATH="$HOME/dotnet:$PATH"
export DOTNET_ROOT="$HOME/dotnet"
export PATH="$HOME/dotnet:$PATH"
