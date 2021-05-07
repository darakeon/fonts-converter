@echo off

docker build -t darakeon/fonts-converter -f fonts-converter.dockerfile .
docker run -it -v %~dp0fonts:/var/fonts/files darakeon/fonts-converter
