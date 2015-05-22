# A simple Flask app container.
FROM ansible/ubuntu14.04-ansible
MAINTAINER Jeff Geerling <geerlingguy@mac.com>

# Install Flask app dependencies.
RUN apt-get update
RUN apt-get install -y libmysqlclient-dev python-dev
RUN pip install flask flask-sqlalchemy mysql-python

# Install playbook and run it.
COPY playbook.yml /etc/ansible/playbook.yml
COPY index.py.j2 /etc/ansible/index.py.j2
COPY templates /etc/ansible/templates
RUN mkdir -m 755 /opt/www
RUN ansible-playbook /etc/ansible/playbook.yml --connection=local

EXPOSE 80
