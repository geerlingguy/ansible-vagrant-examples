# Ansible Vagrant profile for GitLab

## Background

Vagrant and VirtualBox (or some other VM provider) can be used to quickly build or rebuild virtual servers.

This Vagrant profile installs [GitLab](https://github.com/gitlabhq/) following the official [GitLab CentOS installation guide](https://github.com/gitlabhq/gitlab-recipes/blob/master/install/centos/README.md) using the [Ansible](http://www.ansible.com/) provisioner.

## Getting Started

This README file is inside a folder that contains a `Vagrantfile` (hereafter this folder shall be called the [vagrant_root]), which tells Vagrant how to set up your virtual machine in VirtualBox.

To use the vagrant file, you will need to have done the following:

  1. Download and Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  2. Download and Install [Vagrant](http://downloads.vagrantup.com/)
  3. Install [Ansible](http://ansibleworks.com/) (Steps adapted from [this guide](http://devopsu.com/guides/ansible-mac-osx.html)):
    a. Install [Homebrew](http://brew.sh/)
    b. Install Python 2.7.x (`brew install python`).
    c. Install Ansible (`sudo pip install ansible`).
  4. Open a shell prompt (like Terminal on a Mac or cmd or PowerShell on Windows) and cd into the folder containing the `Vagrantfile`.
  5. This Ansible playbook uses a variety of roles to configure the GitLab server, and you'll need to install the roles before you can get the VM set up. Run the following command to get all the necessary roles: `$ ansible-galaxy install geerlingguy.firewall geerlingguy.nfs geerlingguy.ntp geerlingguy.repo-epel geerlingguy.git geerlingguy.redis geerlingguy.mysql geerlingguy.ruby geerlingguy.nginx geerlingguy.gitlab`

Once all of that is done, you can simply type in `vagrant up`, and Vagrant will create a new VM, install the centos64 base box, and configure it as a GitLab server.

Once the new VM is up and running (after `vagrant up` is complete and you're back at the command prompt), you can log into it via SSH if you'd like by typing in `vagrant ssh`. Otherwise, the next steps are below.

### Setting up your hosts file

You need to modify your host machine's hosts file (Mac/Linux: `/etc/hosts`; Windows: `%systemroot%\system32\drivers\etc\hosts`), adding the line below:

    192.168.33.22  gitlab

(Where `gitlab`) is the hostname you have configured in the `Vagrantfile`).

After that is configured, you could visit http://gitlab/ in a browser, and you'll see the GitLab home page. Nice!

GitLab's default administrator account details are below; be sure to login immediately and change these credentials!

    admin@local.host
    5iveL!fe

If you'd like additional assistance editing your hosts file, please read [How do I modify my hosts file?](http://www.rackspace.com/knowledge_center/article/how-do-i-modify-my-hosts-file) from Rackspace.
