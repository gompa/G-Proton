#!/bin/bash
cd ~/.steam/root/
mkdir -p compatibilityrools.d
cd ~/.steam/root/compatibilitytools.d
downloadurl(){
curl -s https://api.github.com/repos/gompa/G-Proton/releases | grep browser_download_url | head -n 1 | cut -d '"' -f 4
}
##current download url var
currentdownloadurl="$(downloadurl)"

currentrelease(){
echo $currentdownloadurl | cut -d "/"  -f 9
}

##download and unpack current release
wget $currentdownloadurl
tar xvzf "$(currentrelease)"
#cleanup tar
rm "$(currentrelease)"
