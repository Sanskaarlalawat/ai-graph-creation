# Use official Nginx image
FROM nginx:alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file into nginx public directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 and run nginx
EXPOSE 80
