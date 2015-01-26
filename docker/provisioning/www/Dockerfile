# A simple Flask app container.
FROM ansible/ubuntu14.04-ansible
MAINTAINER Jeff Geerling <geerlingguy@mac.com>

# Install playbook and run it.
COPY playbook.yml /etc/ansible/playbook.yml
COPY index.py.j2 /etc/ansible/index.py.j2
COPY templates /etc/ansible/templates
RUN ansible-playbook /etc/ansible/playbook.yml --connection=local

EXPOSE 80
