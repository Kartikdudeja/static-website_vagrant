# Host Static Website with Vagrant

Vagrant is a VM Automation tool which uses hypervisor to manange VMs on local setup. A form of Infrastructure as Code (IaC). 
Vagrant enables users to create and configure lightweight, reproducible, and portable development environments.

Following is a simple Automated way to host a static website in a Local Environment Using Vagrant.

<br/>

## Prerequisites:
* Oracle VM VirtualBox
* Vagrant

<br/>

## Brief about files in this Repository:
* 'Vagrantfile: Vagrantfile describes the Machine required for this Project also during provisioning it will execute the Bash Script to deploy the Static Website.
* 'deploy-static-website.sh': Script has the code the setup the web service and bring up the static website.

> Incase you wish to modify the Static Website, just replace the link for the variable 'WEBSITE_URL' with your custom link in the shell script

<br/>

## Bring up the Website:

Clone the Repository and ensure all Prerequisites are installed on your local machine

Run the following Command to bring up the Vagrant VM
``` bash
vagrant up
```

Once VM is up, wait for 5-10 minutes and then you can visit the following URL to view the website
```
http://192.168.20.20/
```

> If you observe any IP conflicts with this value, you can change the IP in the 'Vagrantfile', you will have to destroy the current VM and create a new one for this change to take place.  

<br/>

### Check Script logs, Post Completion

You can also check script logs to ensure that everything worked fine, script logs are located at '/tmp/script.log'. To Check logs, you can use the following commands:

1. Login to the Virtual Machine
``` bash
vagrant ssh
```

2. Read Logs
``` bash
less /tmp/script.log
```
