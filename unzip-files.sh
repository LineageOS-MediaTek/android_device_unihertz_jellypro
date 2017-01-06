#/bin/sh

UPDATE_PACKAGE=update.zip

if [ "x$UPDATE_PACKAGE" = "x" ]; then
    echo You must specify the update.zip as first argument
    exit
fi

BASE=../../../vendor/jiayu/s3plus_n560a/proprietary
rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' proprietary-blobs.txt`; do
  DIR=`dirname $FILE`
  if [ ! -d $BASE/$DIR ]; then
    mkdir -p $BASE/$DIR
  fi
  unzip -j -o ${UPDATE_PACKAGE} system/$FILE -d $BASE/$DIR
done

./setup-makefiles.sh
