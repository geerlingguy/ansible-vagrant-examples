# Ansible Vagrant Examples

This repository contains a collection of example virtual machines running various applications. The VMs are created via Vagrant and provisioned via Ansible.

You can `cd` into any of the included directories and run `vagrant up`, and a generic Linux VM will be booted and configured in a few minutes. You just need to install [Vagrant](http://vagrantup.com/), [VirtualBox](https://www.virtualbox.org/), and [Ansible](http://www.ansible.com/).

All of these examples use a combination of [roles I've added to Ansible Galaxy](https://servercheck.in/blog/using-ansible-galaxy), and were created to help demonstrate Ansible's simplicity and flexibility.

Read more about Ansible and how I use it to manage infrastructure in [Ansible for DevOps](http://ansiblefordevops.com/), a book I'm currently writing.

# VMs/Apps Currently Present

  - LAMP
  - Apache Solr
  - GitLab
  - Jenkins

# To be added

  - SonarQube
  - Phergie
  - Node.js App
  - ...
