#!/bin/bash

mkdir Lineage; cd Lineage

red=`tput setaf 1`
green=`tput setaf 2`

tput setaf 1

echo "  **********************************************"
echo "  *                                            *"
echo "  *      Welcome to Lineage build script !     *"
echo "  *                                            *"
echo "  *               Made by V1ct0r               *"
echo "  *                                            *"
echo "  **********************************************"

tput setaf 2

#
# Note: Numbers are 1024-byte units on Linux,
#
reqSpace=340438600
availSpace=$(df "$HOME" | awk 'NR==2 { print $4 }')
if (( availSpace < reqSpace )); then
  echo " - You dont have recomanded Disk space for this! Do you want to continue (press ctrl+c cancel / enter to continue) ?" >&2
  read x
fi
echo " - Ok. I will download requirements"

sudo apt update; sudo apt upgrade; sudo apt install openssh-server screen python git openjdk-8-jdk android-tools-adb bc bison \
build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32ncurses-dev \
lib32readline-dev lib32z1-dev  liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev \
libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc yasm zip zlib1g-dev \
libtinfo5 libncurses5 ccache
sudo wget 'https://storage.googleapis.com/git-repo-downloads/repo' -P /usr/local/sbin/
sudo chmod +x /usr/local/sbin/repo
echo " - Provide an name to sign builds !"
read n
echo " - Provide an email to sign builds !"
read e

export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
ccache -o compression=true

git config --global user.email "$e"
git config --global user.name "$n"


echo " - What Lineage version to sync ?"
echo " - Copy version number from https://github.com/LineageOS/android/branches !"

read v
repo init -u https://github.com/LineageOS/android.git -b lineage-$v

echo " - Sync has started !"

repo sync

echo " - What is the device you want to build for ?"
read d

echo " - Now bash the device you want to build to download trees and other things (bash a505f.sh / bash a505fn.sh)!"