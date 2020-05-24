# https://hub.docker.com/layers/nginx/library/nginx/1.18.0/images/sha256-426e08db3cc75fc1c673090189d06efe9e5b767cf9f6febe7583e7fc9844e2df

FROM nginx@sha256:426e08db3cc75fc1c673090189d06efe9e5b767cf9f6febe7583e7fc9844e2df
EXPOSE 80
COPY html/* /usr/share/nginx/html/app/
COPY start.sh /

CMD ["/bin/bash", "-c", "./start.sh"]
