#!/usr/bin/env bash
# Function to check if a command exists
function check_command {
    command_name=$1
    install_instructions=$2

    if ! command -v $command_name &> /dev/null; then
        echo "$command_name is not installed."
        echo "Please install it using the following command:"
        echo "$install_instructions"
        exit 1  # 终止脚本执行并返回错误状态
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
# arch
arch=$(uname -m)
case "$arch" in
  x86_64) echo "amd64" ;;
  aarch64) echo "arm64" ;;
  i386|i686) echo "386" ;;
  *) echo "$arch" ;;
esac
# 下载最新版本的安装包
downloadUrl=https://dl.zrlog.com/${installType}/zrlog-$(uname -s)-${arch}.zip?$(date +%s)
wget -q --show-progress ${downloadUrl} -O zrlog.zip
unzip -o zrlog.zip
rm zrlog.zip
./zrlog $@