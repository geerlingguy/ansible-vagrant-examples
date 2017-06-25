# Build a simple MySQL data volume Docker container.
FROM busybox
LABEL maintainer="Jeff Geerling"

# Create data volume for MySQL.
RUN mkdir -p /var/lib/mysql
VOLUME /var/lib/mysql
