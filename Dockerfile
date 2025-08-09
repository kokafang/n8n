FROM n8nio/n8n:latest

# 安装 ffmpeg
USER root
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# 切回 node 用户
USER node

# 声明 n8n 数据目录（Railway 会自动挂载 volume）
VOLUME ["/home/node/.n8n"]
