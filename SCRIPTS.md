### Scripts

`ansible`

Installs ansible and runs the tasks

`docker`

Docker script to check if the installation scripts(tasks) can be run on a specific version of Ubuntu

| Name  | Flag | Default |
| ----- | ---- | ------- |
| PORT  | \-p  | 3000    |
| IMAGE | \-i  | ansible |
| TAG   | \-t  | 1       |

`sync-apps`

There are times when I have installed something on my machine and I have not updated this repository and so my Ansible tasks remain outdated. So this script will check my bash history for applications I have installed and if these applications are not included in my Ansible tasks, it will create an installation task for them.
