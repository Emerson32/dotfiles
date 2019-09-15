#!/bin/bash
#
# config_install.sh - Installs respective configs

# UID and Error Constatns
ROOT_UID=0
USER_ID=1000
E_WRONG_USER=65
E_NO_SUCH_USER=70


# Root privileges will be needed for later installs
if [ "$EUID" -ne 0 ]; then
	echo Error: This script requires root privileges
	exit 1
fi

# 1. First, check for an internet connection
ping -c 1 8.8.8.8 &> /dev/null

if [ $? -eq 0 ]; then
	echo "[+] Internet Connection Up"
else
	echo "[!] Internet Connection Down"
	exit 1
fi

# Function to determine the correct package manager
prog_exists() {
	[ -x "$(which $1)" ]
}

# 2. Check for the appropiate package manager
#    and exits if no compatible manager is found
if prog_exists apt-get &> /dev/null; then PACKAGE_MANAGER=apt-get;
elif prog_exists yum &> /dev/null; then PACKAGE_MANAGER=yum
else echo "[!] No appropriate package manager found"; exit 1
fi

# 3. Update list of available packages
echo [+] Updating package list ...; $PACKAGE_MANAGER update


# Install git if not already installed
if ! prog_exists git &> /dev/null; then $PACKAGE_MANAGER install git 
fi


# Clone the config repo to the home directory
sudo -i -u "$USER" /bin/bash << eof
git clone https://github.com/Emerson32/dotfiles.git /home/"$USER"/dotfiles
eof
