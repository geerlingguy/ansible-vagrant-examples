# A simple Apache + PHP container.
FROM ansible/ubuntu14.04-ansible
MAINTAINER Jeff Geerling <geerlingguy@mac.com>

# Install required Ansible roles.
RUN ansible-galaxy install geerlingguy.apache geerlingguy.php geerlingguy.php-mysql

# Install playbook and run it.
COPY playbook.yml /etc/ansible/playbook.yml
COPY index.php.j2 /etc/ansible/index.php.j2
RUN ansible-playbook /etc/ansible/playbook.yml --connection=local

EXPOSE 80
