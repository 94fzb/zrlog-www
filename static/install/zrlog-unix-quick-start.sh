#!/usr/bin/env bash
# Function to check if a command exists
function check_command {
    command_name=$1
    install_instructions=$2

    if ! command -v $command_name &> /dev/null; then
        echo "$command_name is not installed."
        echo "Please install it using the following command:"
        echo "$install_instructions"
    else
        echo "$command_name is installed."
    fi
}

# Check if wget is installed
check_command "wget" "sudo apt install wget # For Debian/Ubuntu
sudo yum install wget # For CentOS/RHEL
sudo pacman -S wget   # For Arch Linux"

# Check if zip is installed
check_command "zip" "sudo apt install zip  # For Debian/Ubuntu
sudo yum install zip  # For CentOS/RHEL
sudo pacman -S zip    # For Arch Linux"

installType=${1}
# 下载最新版本的安装包
downloadUrl=https://dl.zrlog.com/${installType}/zrlog-$(uname -s)-$(uname -m).zip?$(date +%s)
wget -q --show-progress ${downloadUrl} -O zrlog.zip
unzip -o zrlog.zip
rm zrlog.zip
./zrlog $@