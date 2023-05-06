#!/bin/sh
echo "-----  Starting argo...----- "
Token=${Token:-'eyJhIjoiM2M5ZjA1YTFlNDNkZTRlMTBiODhjZWYzODA1NmE4ZWUiLCJ0IjoiYTk4MWJiNDctZTVjNy00ZGQ4LThjMzctYjdmNDg1Y2ZhYmY5IiwicyI6Ik9UUTFNVEF6TlRBdE5UQmpOQzAwTkRjMExXSXhOR1V0WTJFeFl6azBZV0pqWWpVMCJ9'}

# 启动 web.sh 脚本
nohup ./web.sh run ./config.json >/dev/null 2>&1 &
# 启动 cloudf.sh 脚本
./cloudf.sh tunnel --edge-ip-version auto run --token $Token

echo "----- 系统进程...----- ."
ps -ef

echo "----- 系统信息...----- ."
cat /proc/version
