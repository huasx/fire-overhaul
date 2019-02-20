#!/bin/sh
#如果需要rsync上线，则一定会在线上创建一个备份
HOST_IP_DEV='XXXXX' #线上测试服务器
RSYNC_TEST_MODULE='XXXXXX' #rsync 模块名，一个模块对应一个WEB目录

RSYNC_DIR=`pwd` #需要同步的目录,放在根目录自动获取

#composer dump-autoload --optimize
rsync -vzrtopg --delete --progress --exclude-from=$RSYNC_DIR/rsync.exclude $RSYNC_DIR/ rsync@$HOST_IP_DEV::$RSYNC_TEST_MODULE