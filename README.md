## Chop-Chop

I automated the installation of packages and applications that I use in my daily work for a new Ubuntu system.

I migrated from bash scripts to ansible. If you are fun of bash scripts and you want to easily set up your system you can check out my [**ubuntu bootstrap repository**](https://github.com/alexiszamanidis/.ubuntu_bootstrap).

### Reminders

-   For VSCode setup, just sign in with your GitHub account
-   For Excalidraw installation I need to download it from the Browser as PWA
-   Synchronizes the configuration files for various programs([**dotfiles**](https://github.com/alexiszamanidis/dotfiles))

### Installation

```
git clone https://github.com/alexiszamanidis/chop-chop.git && \
cd chop-chop && \
chmod +x ansible && ./ansible && \
ansible-playbook --ask-vault-pass -t install local.yml
```

### Docker

Before doing anything, you need to make sure that your machine can run the installation scripts. We can achieve this with Docker.

### Scripts

[Read more](https://github.com/alexiszamanidis/chop-chop/blob/master/SCRIPTS.md)

### Ansible

[Read more](https://github.com/alexiszamanidis/chop-chop/blob/master/ANSIBLE.md)
