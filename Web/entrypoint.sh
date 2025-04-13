#!/bin/sh
echo "<h2>Hostname: $(hostname)</h2>" > /usr/share/nginx/html/hostname.html
nginx -g 'daemon off;'
