# Ansible Vagrant profile for Phergie

## Background

Vagrant and VirtualBox (or some other VM provider) can be used to quickly build or rebuild virtual servers.

This Vagrant profile installs [Phergie](http://phergie.org/) using the [Ansible](http://www.ansible.com/) provisioner.

## Getting Started

This README file is inside a folder that contains a `Vagrantfile` (hereafter this folder shall be called the [vagrant_root]), which tells Vagrant how to set up your virtual machine in VirtualBox.

To use the vagrant file, you will need to have done the following:

  1. Download and Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  2. Download and Install [Vagrant](http://downloads.vagrantup.com/)
  3. Install [Ansible](http://ansibleworks.com/) ([guide for installing Ansible](http://docs.ansible.com/intro_installation.html)).
  4. Open a shell prompt (Terminal app on a Mac) and cd into the folder containing the `Vagrantfile`.
  5. This Ansible playbook uses a variety of roles to configure the LAMP server, and you'll need to install the roles before you can get the VM set up. Run the following command to get all the necessary roles: `$ ansible-galaxy install geerlingguy.firewall geerlingguy.ntp geerlingguy.repo-epel geerlingguy.repo-remi geerlingguy.php geerlingguy.git geerlingguy.phergie`

Once all of that is done, you can simply type in `vagrant up`, and Vagrant will create a new VM, install the base box, and configure it.

Once the new VM is up and running (after `vagrant up` is complete and you're back at the command prompt), you can log into it via SSH if you'd like by typing in `vagrant ssh`.

Once logged in, you can run phergie using the command:

    $ php ~/phergie/phergie.php

To run phergie in the background while logging output, use the command:

    $ nohup php ~/phergie/phergie.php > ~/phergie/log 2>&1&
