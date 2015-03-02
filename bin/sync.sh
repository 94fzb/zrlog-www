bin=${0}
path=${bin%/*}
configFile=${1}
syncFolder=${2}
pwd2=$(pwd)

prop() {
    grep "${1}" ${pwd2}/${configFile}|cut -d'=' -f2
}

rm -rf $HOME/.qshell/
${pwd2}/bin/qshell account $(prop 'accessKey') $(prop 'secretKey')

#upload
cd ${syncFolder}
tmpFile=/tmp/$(pwgen 5 1).json
echo '{"src_dir":".","bucket":"'$(prop 'bucket')'","overwrite":true}' > ${tmpFile}
${pwd2}/bin/qshell qupload ${tmpFile}

