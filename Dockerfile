FROM nginx:alpine

# Upgrade all packages to get security fixes (including libpng >=1.6.55-r0)
RUN apk update && \
    apk upgrade --available && \
    rm -rf /var/cache/apk/*

# Your custom content
COPY index.html /usr/share/nginx/html/
