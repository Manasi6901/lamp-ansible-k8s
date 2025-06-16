#!/bin/bash

# Set root password if specified
if [ -n "$MARIADB_ROOT_PASSWORD" ]; then
  echo "Initializing MariaDB with root password..."

  # Initialize DB (if not already)
  if [ ! -d "/var/lib/mysql/mysql" ]; then
    mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
  fi

  # Start DB in safe mode
  mysqld_safe --user=mysql &
  sleep 10

  # Set root password
  mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}'; FLUSH PRIVILEGES;"

  # Bring MariaDB to foreground
  wait
else
  echo "MARIADB_ROOT_PASSWORD not set!"
  exit 1
fi

