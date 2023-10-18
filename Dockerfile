# 使用nginx
FROM nginx

# 将flutter build web 打包后的所有文件复制到nginx下的html目录中
COPY ./build/web* /usr/share/nginx/html/


