FROM nginx:alpine
COPY entrypoint.sh /entrypoint.sh
COPY indexF1.html /usr/share/nginx/html/index.html
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
