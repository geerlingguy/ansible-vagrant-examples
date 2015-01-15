#!/bin/bash

# If connecting to a new data volume, we need to reconfigure MySQL.
if [[ ! -d /var/lib/mysql/mysql ]]; then
    rm -f ~/.my.cnf
    mysql_install_db
    ansible-playbook /etc/ansible/playbook.yml --connection=local
    mysqladmin shutdown
fi

exec /usr/bin/mysqld_safe
