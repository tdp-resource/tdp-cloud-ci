#/bin/sh

git clone https://github.com/tdp-resource/tdp-cloud.git
git clone https://github.com/tdp-resource/tdp-cloud-ui.git

cd $GITHUB_WORKSPACE
chmod +x */build.sh

cd $GITHUB_WORKSPACE/tdp-cloud-ui
npm i && ./build.sh

cd $GITHUB_WORKSPACE/tdp-cloud
cp -av ../tdp-cloud-ui/build/* front/
go mod tidy && ./build.sh
