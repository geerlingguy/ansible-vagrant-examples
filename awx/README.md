# Ansible Vagrant profile for AWS

## Background

Vagrant and VirtualBox (or some other VM provider) can be used to quickly build or rebuild virtual servers.

TODO: Description.

## Getting Started

This README file is inside a folder that contains a `Vagrantfile` (hereafter this folder shall be called the [vagrant_root]), which tells Vagrant how to set up your virtual machine in VirtualBox.

To use the vagrant file, you will need to have done the following:

  1. Download and Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  2. Download and Install [Vagrant](https://www.vagrantup.com/downloads.html)
  3. Install [Ansible](http://ansibleworks.com/) ([guide for installing Ansible](http://docs.ansible.com/intro_installation.html))
  4. Open a shell prompt (Terminal app on a Mac) and cd into the folder containing the `Vagrantfile`

Once all of that is done, you can simply type in `vagrant up`, and Vagrant will create both new VMs and configure them.

Once the VM is up and running (after `vagrant up` is complete and you're back at the command prompt), you can log into it via SSH if you'd like by typing in `vagrant ssh`. Otherwise, the next steps are below.

### Setting up your hosts file

You need to modify your host machine's hosts file (Mac/Linux: `/etc/hosts`; Windows: `%systemroot%\system32\drivers\etc\hosts`), adding the lines below:

    192.168.6.65  awx.local

(Where `awx.local` is the hostname you have configured in the `Vagrantfile`).

After that is configured, you could visit http://awx.local/ in a browser, and you'll see the AWX login page.

If you'd like additional assistance editing your hosts file, please read [How do I modify my hosts file?](http://www.rackspace.com/knowledge_center/article/how-do-i-modify-my-hosts-file) from Rackspace.

## Author Information

Created in 2017 by [Jeff Geerling](http://jeffgeerling.com/), author of [Ansible for DevOps](https://www.ansiblefordevops.com/).
