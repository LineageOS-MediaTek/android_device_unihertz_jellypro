# Building Manual

## Installing Java and Tools

#### Add Java repository if no one is installed:
```
sudo apt-add-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jdk
```
#### Then install all other needed tools:
```
sudo apt-get update && sudo apt-get install git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-8-jre openjdk-8-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib maven tmux screen w3m ncftp
```
## Downloading Source

#### Installing repo tools:
```
mkdir ~/bin
PATH=~/bin:$PATH
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
```
#### Create source directory 
```
mkdir ~/cm-14.1
cd ~/cm-14.1
```
#### Configure Git
```
git config --global user.email "email@example.com"
git config --global user.name "git_username"
```
#### Initialize Repo:
```
repo init -u git://github.com/LineageOS/android.git -b cm-14.1
```
#### After Initialization, Sync (it may require some hours to download everything:
```
repo sync -c -f -q -j8 --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune
``` 
#### Clone necessary trees
```
git clone https://github.com/LineageOS-MediaTek/android_device_unihertz_jellypro -b cm-14.1 device/unihertz/jellypro
git clone https://github.com/LineageOS-MediaTek/android_device_mediatek_mt6737-common -b cm-14.1 device/mediatek/mt6737-common
git clone https://github.com/LineageOS-MediaTek/proprietary_vendor_unihertz -b cm-14.1 vendor/unihertz
```
## Building Source

#### Enable ccache for Improve speed of build
```
export CCACHE_DIR=./.ccache
ccache -C
export USE_CCACHE=1
export CCACHE_COMPRESS=1
prebuilts/misc/linux-x86/ccache/ccache -M 50G
```
#### Clean your build
```
make clean && make clobber
```
#### To avoid jack errors
```
export ANDROID_JACK_VM_ARGS="-Xmx4096m -Xms512m -Dfile.encoding=UTF-8 -XX:+TieredCompilation"
./prebuilts/sdk/tools/jack-admin kill-server
./prebuilts/sdk/tools/jack-admin start-server
```
#### Start building :) 
```
sh build/envsetup.sh 
breakfast jellypro
make -j8 bacon | tee build.log
```
