## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below. (Click to enlarge).

<img src="/images/TopLevelToplogy.JPG"/>

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the <b>playbook</b> file may be used to install only certain pieces of it, such as Filebeat.

 Preview of the <a href="ansible/install-elk.yml">Install Elk Playbook File</a>

<b>This document contains the following details:</b>

- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the <i>D*mn Vulnerable Web Application</i>.

Load balancing ensures that the application will be <b>highly-available</b>, in addition to restricting <b>access</b> to the network.  The <b>load balancer</b> protects availability of a resource by restricting traffic based on a predefined set of rules.  As traffic peaks the load balancer watches for suspicous patterns in traffic and can deny traffic as needed.

The <b>jump box</b> on the other hand restricts access to the infrastructure by only allowing a signle point of entry to the other VM's on the network.  The access to the jump box is controlled by the firewall settings by allowing the jump box to connect to the other VM's while denying access to all other machines outside of the jump box.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the <b>traffic</b> and system <b>logs</b>.
- Filebeat watches for the <b>heartbeat</b>.
- Metricbeat records system <b>metrics</b>.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| ELK VM   | ELK STACK| 10.2.0.4   | Linux            |
| WEB-1    | WEB APPS | 10.0.0.5   | Linux            |
| WEB-2    | WEB APPS | 10.0.0.6   | Linux            |
| WEB-3    | DVWA     | 10.0.0.7   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box 40.114.3.172 can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 76.105.118.41

Machines within the network can only be accessed by the Jump Box on 10.0.0.4.
- The Elk VM is also accessible by the Jump Box on 40.114.3.172

A summary of the access policies in place can be found in the table below.<br>
<b>The network security group has the following rules in place to allow traffic:</b><br>
-TCP over port 80 from 76.105.118.41 is allowed to VNET<br>
-SSH over port 22 from 76.105.118.41 is allowed to VNET<br>
-TCP over port 8080 from the Red Team Load Balancer (13.68.145.98) to VNET<br>
-TCP over port 5601 from any to any for DVWA container<br>
-TCP over port 22 for Ansible from WEB-1113 to Public<br>

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 76.105.118.41 /Any VN|
| ElkVM    | Yes                 | 40.114.3.72          |
| Web1     | No                  | 10.0.0.4             |
| Web2     | No                  | 10.0.0.4             |
| Web3     | No                  | 10.0.0.4             |
### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- Software can be deployed to mutiple boxes at scale remotely from one box.

The playbook implements the following tasks:
- Configure the Elk VM with Docker by downloading the docker.io file and phython3
- Install docker and python if needed on each VM
- Adust the memory for each VM to meet the minimum requirements
- Download the docker container image (sebp/elk:791) and activate it on each VM
- Enable the docker service to start on reboot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

<img src="/images/Curl.JPG"/>

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
