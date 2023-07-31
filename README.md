# Vagrant Static Website Project

Welcome to the Vagrant Static Website project! This repository contains the necessary files and configurations to set up a local development environment for a static website using Vagrant.

## Overview

The purpose of this project is to provide a convenient and isolated development environment for working on static websites. Vagrant allows you to create and manage a consistent development environment across different operating systems, ensuring that all team members work in the same environment with the same dependencies.

## Prerequisites

Before you start, make sure you have the following software installed on your system:

1. [Vagrant](https://www.vagrantup.com/): Vagrant is a tool that allows you to create and configure lightweight, reproducible, and portable virtual environments. By utilizing Vagrant, developers can work in a consistent and isolated environment, ensuring that the development and testing process remains predictable and streamlined.
2. [VirtualBox](https://www.virtualbox.org/) (or another supported provider): A virtualization provider, Vagrant supports various providers like VirtualBox, VMware, and Hyper-V. You must have one of these virtualization providers installed on your system.

## Getting Started

Follow these steps to set up the development environment:

1. Clone this repository to your local machine:

```bash
git clone https://github.com/Kartikdudeja/static-website_vagrant.git
```

<br/>

2. Customize the website content:  
`deploy-static-website.sh`: Script has the code the setup the web service and bring up the static website.  
To Change the Website Template, just replace the URL defined for the variable 'WEBSITE_URL'.

<br/>

3. Configure Vagrant:  
`Vagrantfile`: Vagrantfile describes the Machine required for this Project also during provisioning it will execute the Bash Script to deploy the Static Website.  
Open the `Vagrantfile` and review the configuration settings. Adjust them according to your requirements. You can set the amount of RAM, the number of CPU cores, and networking settings as needed.

<br/>

4. Provision the Vagrant box:

```bash
vagrant up
```

Vagrant will download the base box and provision the virtual machine based on the settings in the `Vagrantfile`.

<br/>

5. Access the website:  
Once the provisioning process is complete, you can access the static website locally by visiting `http://192.168.20.20/` in your web browser.

<br/>

6. Shutdown the Vagrant box:

```bash
vagrant halt
```

<br/>

7. Troublehooting:  
If you encounter any issues you can check the script logs to ensure that everything worked fine, script logs are located at '/tmp/script.log'. To Check logs, you can use the following commands:
  
  * Login to the Virtual Machine
  ``` bash
  vagrant ssh
  ```
  
  * Read Logs
  ``` bash
  less /tmp/script.log
  ```

## Useful Vagrant Commands

Here are some useful Vagrant commands for managing the virtual machine:

- `vagrant up`: Create and provision the Vagrant box.
- `vagrant halt`: Shut down the Vagrant box.
- `vagrant reload`: Restart the Vagrant box.
- `vagrant destroy`: Delete the Vagrant box (Note: This will remove all data inside the virtual machine).

## Conclusion

You now have a local development environment for your static website using Vagrant. Happy coding!

If you encounter any issues or have any questions, please feel free to open an issue on the [GitHub repository](https://github.com/Kartikdudeja/static-website_vagrant.git).


