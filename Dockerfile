# Use Nginx as the base image
FROM nginx:alpine

# Copy your HTML file into the Nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Optional: remove default index if needed
RUN rm -f /usr/share/nginx/html/index.nginx-debian.html || true

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
