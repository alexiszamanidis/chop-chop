## Ansible

After spending hours developing bash scripts to bootstrap my ubuntu system I found out about **ansible**.
So, this repository contains everything that can be installed and is broken into yml tasks.

Ansible Benefits:

-   It is built for automation
-   YAML configuration
-   Vaulted files

I migrated from bash scripts to ansible. If you are fun of bash scripts and you want to easily set up your system you can check out my [**ubuntu bootstrap repository**](https://github.com/alexiszamanidis/.ubuntu_bootstrap).

### Installation

```
<!-- clone repository -->
git clone https://github.com/alexiszamanidis/ansible.git

<!-- install ansible on your machine -->
./ansible
```

### Docker

Before doing anything, you need to make sure that your machine can run the installation scripts. We can achieve this with Docker.

```
./docker.sh
```

### Ansible Notes

Run specific tag(e.g tag: zsh)

```
ansible-playbook -t <your-tag> local.yml
```

Run specific tag that needs your vaulted password(e.g tag: ssh)

```
ansible-playbook --ask-vault-pass -t <tag> local.yml
```

Encrypt file

```
sudo ansible-vault encrypt <path-to-your-file>
```
