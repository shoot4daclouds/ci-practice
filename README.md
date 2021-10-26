# ci-practice

Project to quickly spin up ci tools locally on VirtualBox.

## Packer

The packer directory contains packer templates that build VirtualBox base boxes (.box) for the following:
  - base Centos 7 box (minimal install)
  - Jenkins on Centos 7
  - Kubernetes node on Centos 7 (master + worker)

### Requirements

The following software tools are required to create base boxes:
  - VirtualBox
  - Packer
  - Vagrant

### Execution
1. git clone the project
2. Change to packer directory
3. Execute packer build with desired template
```
# cd ci-packer/packer
# packer build base-centos7-min.json
```

## Vagrant

After Box has been built via packer. Change directory to whichever software tool is desired and 'vagrant up'.
```
# cd ci-packer/vagrant/jenkins
# vagrant up
```

## Known issues

### Manually join kubernetes worker to master
The kubeadm join command is not automated. You must parse through the Ansible output for the join command and manually run it on the worker, after the vms are provisioned with vagrant.

### Kubernetes worker hosts file incorrectly configured
Kubernetes worker host files is configured with the wrong ip address for master node. Before joining the worker node to the cluster, fix the master node ip address on the worker.