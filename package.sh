#!/bin/sh

pip3 install ortools

rm -rf dist dist.zip; mkdir dist

find "/opt/python3/lib/python3.6/site-packages" -not -name "*dist-info" -not -name "README.txt" -not -name "pip" -not -name "setuptools" -not -name "pkg_resources" -mindepth 1 -maxdepth 1 -exec cp -r {} ./dist \;
find -not -name 'dist' -not -name 'Dockerfile' -not -name 'package.sh' -mindepth 1 -maxdepth 1 -exec cp -r {} ./dist \;

chmod -R 755 ./dist

cd dist; zip -r ../dist.zip *
