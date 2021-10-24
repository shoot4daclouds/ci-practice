# ci-practice

Project to quickly spin up ci tools locally on VirtualBox.

## Packer

The packer directory contains packer templates that build VirtualBox base boxes (.box) for the following:
  - base Centos 7 box (minimal install)
  - Jenkins on Centos 7
  - Kubernetes node on Centos 7 (master or worker)

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
# packer build base-centos7-min.json
```

## Vagrant
