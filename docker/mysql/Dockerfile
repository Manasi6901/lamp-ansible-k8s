FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt update && apt install -y software-properties-common gnupg wget lsb-release curl

# Add MariaDB repository
RUN curl -LsS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | bash

# Install MariaDB
RUN apt update && apt install -y mariadb-server

# Create MySQL data dir
RUN mkdir -p /var/lib/mysql && chown -R mysql:mysql /var/lib/mysql

# Copy custom entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set working directory
WORKDIR /var/lib/mysql

EXPOSE 3306

# Start from entrypoint
ENTRYPOINT ["/entrypoint.sh"]

