#!/usr/bin/env bash

printenv >environment.txt
sed -i "s/GREETING/${GREETING:-unknown}/" /usr/share/nginx/html/app/index.html
nginx -g "daemon off;"