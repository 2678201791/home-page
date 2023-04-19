# 使用 Node 14 作为基础镜像
FROM node:14

# 创建工作目录
WORKDIR /app

# 将 package.json 和 package-lock.json 复制到工作目录中
COPY package*.json ./

# 安装依赖
RUN npm install

# 将整个项目复制到工作目录中
COPY . .

# 构建项目
RUN npm run build

# 将服务端口暴露出来
EXPOSE 8080

# 启动项目
CMD ["npm", "run", "start"]
