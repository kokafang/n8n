FROM n8nio/n8n:latest

# 安装 ffmpeg (Alpine)
USER root
RUN apk add --no-cache ffmpeg

# 切回 node 用户
USER node
