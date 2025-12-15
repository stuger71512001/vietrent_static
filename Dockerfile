# Sử dụng Nginx bản nhẹ nhất để chạy web tĩnh
FROM nginx:alpine

# Xóa config mặc định của Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy file index.html của bạn vào thư mục web của Nginx
COPY index.html /usr/share/nginx/html/index.html

# (Tùy chọn) Copy file cấu hình Nginx nếu cần, nhưng với 1 file html thì không cần thiết
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Mở port 80
EXPOSE 80

# Chạy Nginx
CMD ["nginx", "-g", "daemon off;"]