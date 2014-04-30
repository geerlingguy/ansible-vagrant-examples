# Ansible Vagrant Examples

This repository contains a collection of example virtual machines running various applications. The VMs are created via Vagrant and provisioned via Ansible.

You can `cd` into any of the included directories and run `vagrant up`, and a generic Linux VM will be booted and configured in a few minutes. You just need to install [Vagrant](http://vagrantup.com/), [VirtualBox](https://www.virtualbox.org/), and [Ansible](http://www.ansible.com/). View the included README.md file in any of the subdirectories to find out more about the particular VM.

All of these examples use a combination of [roles I've added to Ansible Galaxy](https://servercheck.in/blog/using-ansible-galaxy), and were created to help demonstrate Ansible's simplicity and flexibility.

Read more about Ansible and how I use it to manage infrastructure in [Ansible for DevOps](http://ansiblefordevops.com/), a book I'm currently writing.

# VMs/Apps Currently Present

  - **LAMP** (Linux, Apache, MySQL, and PHP)
  - **Apache Solr** (Java-based text search service)
  - **GitLab** (Ruby-based GitHub-like Git web interface)
  - **Gogs** (Go-based GitHub-like Git web interface)
  - **Jenkins** (Java-based Continuous Integration server)
  - **Phergie** (PHP IRC Bot)
  - **SVN** (An SVN server using Apache for a web interface)
  - **Svn2Git** (A VM which includes KDE's Svn2Git for repository conversions)

# To be added

  - SonarQube
  - Node.js App Server
  - ...
