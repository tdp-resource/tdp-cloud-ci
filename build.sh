#/bin/sh

git clone https://github.com/tdp-resource/tdp-cloud.git
git clone https://github.com/tdp-resource/tdp-cloud-ui.git

chmod +x */build.sh

cd ./tdp-cloud-ui
npm i && ./build.sh

sleep 1
cp -av build/* ../tpd-cloud/front/

cd ../tdp-cloud
go mod tidy && ./build.sh
