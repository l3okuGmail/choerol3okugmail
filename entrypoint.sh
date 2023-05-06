#!/bin/sh
echo "-----  Starting argo...----- "
Token=${Token:-'eyJhIjoiM2M5ZjA1YTFlNDNkZTRlMTBiODhjZWYzODA1NmE4ZWUiLCJ0IjoiYTk4MWJiNDctZTVjNy00ZGQ4LThjMzctYjdmNDg1Y2ZhYmY5IiwicyI6Ik9UUTFNVEF6TlRBdE5UQmpOQzAwTkRjMExXSXhOR1V0WTJFeFl6azBZV0pqWWpVMCJ9'}

chmod +x ./cloudf.sh
./cloudf.sh tunnel --edge-ip-version auto run --token $Token  >/dev/null 2>&1 &

echo "-----  Starting web ...----- ."

chmod +x ./web.sh
./web.sh -c ./config.json >/dev/null 2>&1 &

echo "----- 系统进程...----- ."
ps -ef

echo "----- 系统信息...----- ."
cat /proc/version
echo "----- enjoy it (^o^).----- ."
sleep 0
