 Ansible
-------
* Ansible is a Configuration management tool
* CM is a automation tool
* In configuration management tool we have chef and puppet and ansible
Need for Ansible
 * Problem Statement:
    * Organization QA Policy:
        * For every change submitted by developer run
           * unit tests
           * functional tests
           * Performance tests
* FT and PT we need application to be running
* Since number of changes occuring in the code will be more we need to do more deployments and doing this manually is not sensible(increases time to market)
* To solve this number of deployments we have to automate
    * We have a two ways of automate the application 
       * Procedural
       * Declarativ  

Ansible:
 * Configiration Management system It is used to manage infrastructure and applications 
 * It allows users to deploy and applications using SSH, without needing to install an agent on a remote system


### Use of Ansible

* It is used for managing IT infrastructure deploying software applications to remote nodes 
* Ansible allows you to deploy an application to manage the nodes with one single command


> Advantages:


* It is agentless and only required SSH service running on target nodes or machines.
* Python is the only required dependency and fortunately most of systems come with it pre-installed
* It requires minimal resources, so there is low overhead

Tasks:

* The task is a unit action of Ansible
* It helps by breaking a configuration policy into smaller files or bloks of code

Ansible is an open source software developped in python
Ansible expects python to be installed on the nodes




### Ansible Configuration Management system

* It is a system and used to setup and manage to infrastructure and applications 
* It allows users to deploy and update applications using SSH, without needing to install an agent on a remote system

### Handlers

* Handlers are used to trigger the status of the service such as restarting and stopping a service

### Ad-hoc

* Ad-hoc commands are simple one-line commands 
* It is used to perform a certain task

### Facts

* Facts are data gathering about target nodes and return back to controller nodes

### Provisioning

* Provisioning with ansible allows you to seemlessly transition and configuration management, orchestration and application deployment using the same simple human readable, automation language
  

### Ansible-Galaxy

* Ansible-Galaxy is a repository for Ansible Roles that are available to  drop directly to your playbooks to streamline your automation projacts

### Ansible Vault

* Ansible Vault is an Ansible feature that helps you to encrypt confidential information without compromising security

### Inventory

* Inventory is an initialization file that has details about the defferent servers that you are managing

### Playbook 

* Playbook is a code file written in YAML format, Playbook basically contains the tasks that need to execute or automate

### play

* Play is a task executed from start to finish or the execution of playbook is called a play

### Task

* Each task represents a single procedure that needs to be executed

### 