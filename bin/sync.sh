syncFolder=${4}
#upload
bash -e bin/download-ossutil.sh || true
cd ${syncFolder}
../ossutil config -i ${1} -k ${2} -e oss-accelerate.aliyuncs.com
../ossutil cp -f ${4} oss://${3}/${4}

