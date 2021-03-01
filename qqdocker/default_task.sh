#!/bin/sh
set -e


echo "获取最新定时任务相关代码"
echo "##############################################################################"
cd /pss
git pull origin master
cd qqdocker
cp crontab_list.sh default_task.sh scripts_update.sh docker_entrypoint.sh send_notify.py /pss
echo "##############################################################################"
echo "获取最新定时任务相关代码完成!"


echo "执行脚本更新相关任务"
echo "=============================================================================="
sh -x /pss/scripts_update.sh
echo "=============================================================================="
echo "执行脚本更新相关任务完成!"
