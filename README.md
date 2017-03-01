Cumulus Networks Boot Camp Troubleshooting Github Repo
===========================
This Github repository contains scenarios for the Open Networking Boot Camp Network Operations Troubleshooting Module:

---
##Setup

Git clone this repo to the [cldemo-vagrant repo](https://github.com/cumulusnetworks/cldemo-vagrant) oob-mgmt-server

```bash
vagrant@oob-mgmt-server:~$ git clone https://github.com/CumulusNetworks/cl-bc-troubleshooting
```
###Ansible setup on oob-mgmt-server
This Boot Camp module requires Ansible to properly work.  Here are the steps to install install on the oob-mgmt-server

 - Install the software-properties-common package
```bash
~$ sudo apt-get install software-properties-common -qy
```
 - Add the ansible repository 
```bash
~$ sudo apt-add-repository ppa:ansible/ansible -y
```
 - Perform and add-get update
```bash
~$ sudo apt-get update
```
 - Install Ansible
```bash
~$ sudo apt-get install ansible -qy
```

###Running a scenario
Refer to the documentation in the Cumulus Networks Open Networking Boot Camp to solve network operations troubleshooting scenarios.  To run a working scenario with BGP unnumbered do the following

```bash
cumulus@oob-mgmt-server:~/cl-bc-troubleshooting$ ansible-playbook playbook.yml -e "s=0"
```

##Course Information
This course is used as part of the Cumulus Linux Open Networking Boot Camp.  Please refer to https://cumulusnetworks.com/education/instructor-led-training/ for more information.


---

![Cumulus icon](cumulus-small.png)  

### Cumulus Linux

Cumulus Linux is a software distribution that runs on top of industry standard networking hardware. It enables the latest Linux applications and automation tools on networking gear while delivering new levels of innovation and ﬂexibility to the data center.

For further details please see: [cumulusnetworks.com](http://www.cumulusnetworks.com)
