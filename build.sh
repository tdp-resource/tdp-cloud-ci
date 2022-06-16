#/bin/sh

git clone https://github.com/tdp-resource/tdp-cloud.git
git clone https://github.com/tdp-resource/tdp-cloud-ui.git

set

chmod +x */build.sh

cd ./tdp-cloud-ui
npm i && ./build.sh

cd ../
cp -av ./tdp-cloud-ui/build/* ./tpd-cloud/front/

cd ./tdp-cloud
go mod tidy && ./build.sh
