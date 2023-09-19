syncFolder=${4}
#upload
cd ${syncFolder}
bash -e shell/download-ossutil.sh || true
./ossutil config -i ${1} -k ${2} -e oss-accelerate.aliyuncs.com
./ossutil cp -f ${4} oss://${3}/${4}

