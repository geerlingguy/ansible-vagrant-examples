# Ansible Vagrant profile for a Kubernetes cluster

## Background

Vagrant and VirtualBox (or some other VM provider) can be used to quickly build or rebuild virtual servers.

This Vagrant profile installs [Kubernetes](https://kubernetes.io) using the [Ansible](http://www.ansible.com/) provisioner.

## Getting Started

This README file is inside a folder that contains a `Vagrantfile` (hereafter this folder shall be called the [vagrant_root]), which tells Vagrant how to set up your virtual machine in VirtualBox.

To use the vagrant file, you will need to have done the following:

  1. Download and Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  2. Download and Install [Vagrant](https://www.vagrantup.com/downloads.html)
  3. Install [Ansible](http://docs.ansible.com/ansible/latest/intro_installation.html)
  4. Open a shell prompt (Terminal app on a Mac) and cd into the folder containing the `Vagrantfile`
  5. Run the following command to install the necessary Ansible roles for this profile: `$ ansible-galaxy install -r requirements.yml`

Once all of that is done, you can simply type in `vagrant up`, and Vagrant will create a new VM, install the base box, and configure it.

Once the new VM is up and running (after `vagrant up` is complete and you're back at the command prompt), you can log into it via SSH if you'd like by typing in `vagrant ssh`. Otherwise, the next steps are below.

### Setting up your hosts file

You need to modify your host machine's hosts file (Mac/Linux: `/etc/hosts`; Windows: `%systemroot%\system32\drivers\etc\hosts`), adding the line below:

    192.168.33.71  kube1

(Where `kube1` is the hostname you have configured in the `Vagrantfile` for the first machine, which will be the Kubernetes master).

If you'd like additional assistance editing your hosts file, please read [How do I modify my hosts file?](http://www.rackspace.com/knowledge_center/article/how-do-i-modify-my-hosts-file) from Rackspace.

### Using Kubernetes

Once the servers are running, you can run `vagrant ssh kube1` to log into the master Kubernetes server, then use `sudo su` to switch to the root user.

Once logged into the master as root, you can manage the Kubernetes cluster using `kubectl` commands. For example, to verify all the nodes are connected to the master, run:

    kubectl get nodes

This should print a list of the master and two nodes.

For a quick test that Kubernetes is working, run this perl-based 'hello world' job:

    # Run a job to calculate Pi to 100 decimal places.
    kubectl run pi --image=perl --restart=OnFailure -- perl -Mbignum=bpi -wle 'print bpi(100)'
    
    # Get the status of the job.
    kubectl describe jobs/pi

Once the 'Pods Statuses' shows '1 Succeeded', get the pod name and then view the pod logs to see the calculated number:

    # Get the pod name.
    kubectl get pods
    
    # View the result.
    kubectl logs [pod-name-from-previous-command]

## Author Information

Created in 2018 by [Jeff Geerling](https://www.jeffgeerling.com/), author of [Ansible for DevOps](https://www.ansiblefordevops.com/).
