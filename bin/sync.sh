pip3 install coscmd
syncFolder=${4}
#upload
cd ${syncFolder}
coscmd config -a ${1} -s ${2} -b ${3} -e cos.accelerate.myqcloud.com
coscmd upload -r ${syncFolder} /
coscmd upload -r ${syncFolder}/code -H "{'Content-Type':'text/html'}" /
coscmd upload -r ${syncFolder}/download -H "{'Content-Type':'text/html'}" /

