# Ansible Vagrant profile for AWX

## Background

Vagrant and VirtualBox (or some other VM provider) can be used to quickly build or rebuild virtual servers.

This example installs Ansible's [AWX Project](https://github.com/ansible/awx) (the source code behind [Ansible Tower](https://www.ansible.com/tower)) on a CentOS 7 VM, so you can test and run AWX... to test and run more Ansible playbooks!

## Getting Started

This README file is inside a folder that contains a `Vagrantfile` (hereafter this folder shall be called the [vagrant_root]), which tells Vagrant how to set up your virtual machine in VirtualBox.

To use the vagrant file, you will need to have done the following:

  1. Download and Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  2. Download and Install [Vagrant](https://www.vagrantup.com/downloads.html)
  3. Install [Ansible](https://www.ansible.com/) ([guide for installing Ansible](http://docs.ansible.com/ansible/latest/intro_installation.html))
  4. Open a shell prompt (Terminal app on a Mac) and cd into the folder containing the `Vagrantfile`
  5. Run the following command to install the necessary Ansible roles for this profile: `$ ansible-galaxy install -r requirements.yml`

Once all of that is done, you can simply type in `vagrant up`, and Vagrant will create both new VMs and configure them.

Once the VM is up and running (after `vagrant up` is complete and you're back at the command prompt), you can log into it via SSH if you'd like by typing in `vagrant ssh`. Otherwise, the next steps are below.

### Setting up your hosts file

You need to modify your host machine's hosts file (Mac/Linux: `/etc/hosts`; Windows: `%systemroot%\system32\drivers\etc\hosts`), adding the lines below:

    192.168.6.65  awx.local

(Where `awx.local` is the hostname you have configured in the `Vagrantfile`).

After that is configured, you could visit http://awx.local/ in a browser, and you'll see the AWX login page. Log in with the default credentials:

  - Username: `admin`
  - Password: `password`

> Note: The first time you install AWX, it takes some time to set up AWX's database (and this process will peg one CPU core for a while!). If you get a 500 error notice when you visit awx.local, wait a little bit and try again.

If you'd like additional assistance editing your hosts file, please read [How do I modify my hosts file?](http://www.rackspace.com/knowledge_center/article/how-do-i-modify-my-hosts-file) from Rackspace.

## Author Information

Created in 2017 by [Jeff Geerling](http://jeffgeerling.com/), author of [Ansible for DevOps](https://www.ansiblefordevops.com/).
