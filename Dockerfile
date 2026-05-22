# Lifelong Supplier Intelligence dashboard — static hosting image
# Build pack: Dockerfile  ·  Container port: 80
FROM nginx:alpine

# site config: gzip compression + routing
COPY nginx.conf /etc/nginx/conf.d/default.conf

# serve the dashboard at the site root
COPY Suppliers_Map.html /usr/share/nginx/html/index.html

EXPOSE 80
