#!/bin/bash

clear

sleep 3

echo "----------------------------------------------------------------"

cat <<EOF
 _   _             ____        _     _   _____           _     
| \ | | __ _ _ __ | __ ) _   _| |   (_) |_   _|__   ___ | |___ 
|  \| |/ _\` | '_ \|  _ \| | | | |   | |   | |/ _ \ / _ \| / __|
| |\  | (_| | | | | |_) | |_| | |___| |   | | (_) | (_) | \__ \\
|_| \_|\__,_|_| |_|____/ \__,_|_____|_|   |_|\___/ \___/|_|___/
                                                               
----------------------------------------------------------------
欢迎使用 “楠不理” 一键卸载脚本。该脚本可以一键卸载Hadoop与JDK软件

脚本已在GitHub开源,链接 https://github.com/YEXIAONAN/AutomaticScript
----------------------------------------------------------------
EOF

# 删除 /opt/ 目录下的 module 文件夹
echo "正在删除 /opt/module 文件夹..."
rm -rf /opt/module
echo "/opt/module 文件夹删除完成。"

# 删除 /etc/profile 文件中的相关环境变量配置
echo "正在删除 /etc/profile 文件中的环境变量配置..."
sed -i '/# 添加环境变量到 \/etc\/profile/,+3d' /etc/profile
echo "/etc/profile 文件中的环境变量配置已删除。"

# 完成
echo "脚本执行完成，环境已清理干净。"