# Disney-DevOps-Project
# Please Read this file for better understanding of the project.
# The project looks to serve a simple Hello World html page on a web server. The application and host must be secure such that only appropriate ports are exposed and any HTTP requests are redirected to HTTPS.

This project has been implemented using the PUPPET configuration management tool. 

The infrastructure consitis of a 'Puppet Master' with the name 'puppet' and an 'Agent' with the name 'node'. 

This infrastructure has been implemented using 'Droplets' created using the service provided by "Digital Ocean". Droplets are nothing but instances of a linux machine. For this project, I have deployed 2 Ubuntu 14.04 instances (or droplets).

Here are the login details for the droplets:

Puppet Master:
IP: 138.197.207.71
User: root
Password: disney1

Puppet Agent:
IP: 104.131.130.15
User: root
Password: disney2

The project consits of 2 main files that have been developed to meet the criteria:

1. init.pp:
This is a 'Manifest' under the 'Disney' module. It defines a class named 'disney' and contains code to configure the agent node.

2. default-ssl:
This file is a configuration file for apache2. It defines the 'Virtual Hosts' and the ports that are accessible, information to implement a self-signed 'SSL' certificate for apache and instructions used to redirect all HTTP requests to HTTPS. 

The main manifest: 'site.pp' only imports the previously created 'disney' module which contains 'init.pp' manifest that configures the agent.

The puppet agent runs the command 'puppet agent --test' and the agent's configuration begins. Alternatively, we could wait for the agent to automatically pick up the new configuration after every 30 minutes, which is the default time an agent takes before checking for new updates on the master.

The HTML page to serve is 'test.html' that contains the 'Hello World' code. This page can be accessed using this URL:
104.131.130.15/test.html

Path to 'disney' module:
/etc/puppet/modules/disney/

Path to 'default-ssl' and 'test.html' files:
/etc/puppet/modules/disney/files

Path to 'init.pp' manifest:
/etc/puppet/modules/disney/manifests

Path to main manifest:
/etc/puppet/manifests


