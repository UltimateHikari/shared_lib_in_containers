#!/bin/bash

make -B
rm build

cp -r bin ./cont-1/
cp scripts/run.sh ./cont-1/bin
docker build --tag cont-1 ./cont-1

cp -r bin ./cont-2/
cp scripts/run.sh ./cont-2/bin
docker build --tag cont-2 ./cont-2

cp -r bin ./cont-3/
cp scripts/run.sh ./cont-3/bin
docker build --tag cont-3 ./cont-3
