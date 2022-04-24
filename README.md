## Ansible

After spending hours developing bash scripts to bootstrap my ubuntu system I found out about **ansible**.
So, this repository contains everything that can be installed and is broken into yml tasks.

Ansible Benefits:

-   It is built for automation
-   YAML configuration
-   Vaulted files

I migrated from bash scripts to ansible. If you are fun of bash scripts and you want to easily set up your system you can check out my [**ubuntu bootstrap repository**](https://github.com/alexiszamanidis/.ubuntu_bootstrap).

### Reminders

-   For VSCode setup, just sign in with your GitHub account
-   For Excalidraw installation I need to download it from Google Chrome as PWA
-   Synchronizes the configuration files for various programs([**dotfiles**](https://github.com/alexiszamanidis/dotfiles))

### Installation

```
git clone https://github.com/alexiszamanidis/ansible.git && \
cd ansible && \
chmod +x ansible && ./ansible && \
ansible-playbook --ask-vault-pass -t install local.yml
```

### Docker

Before doing anything, you need to make sure that your machine can run the installation scripts. We can achieve this with Docker.

[Read more](https://github.com/alexiszamanidis/ansible/blob/master/SCRIPTS.md)

### Scripts

[Read more](https://github.com/alexiszamanidis/ansible/blob/master/SCRIPTS.md)

### Ansible

[Read more](https://github.com/alexiszamanidis/ansible/blob/master/ANSIBLE.md)
