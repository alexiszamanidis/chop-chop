### Scripts

`ansible`

This script is designed to automate the installation of Ansible on a target system, and then execute a
series of tasks using the newly installed Ansible instance.

`docker`

This script is designed to validate whether installation scripts or tasks can be executed successfully
on a specific version of Ubuntu. The script sets up a Docker container that runs an instance of the target
Ubuntu version, along with any dependencies required for executing the installation tasks. The installation
tasks are then executed within the container, and any errors or issues encountered during the process are
reported back to the user.

| Name  | Flag | Default |
| ----- | ---- | ------- |
| PORT  | \-p  | 3000    |
| IMAGE | \-i  | ansible |
| TAG   | \-t  | 1       |

`sync-apps`

At times, I may have installed software on my machine without updating the corresponding repository,
leading to outdated Ansible tasks. To mitigate this, this script scans my bash history for installed
applications, checks if these applications are not included in my current Ansible tasks and generatesa
a new installation task for them if necessary.
