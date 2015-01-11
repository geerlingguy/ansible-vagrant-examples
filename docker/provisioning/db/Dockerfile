# A simple MySQL container.
FROM ansible/ubuntu14.04-ansible
MAINTAINER Jeff Geerling <geerlingguy@mac.com>

# Install required Ansible roles.
RUN ansible-galaxy install geerlingguy.mysql

# Install playbook and run it.
COPY playbook.yml /etc/ansible/playbook.yml
RUN ansible-playbook /etc/ansible/playbook.yml --connection=local

EXPOSE 3306
