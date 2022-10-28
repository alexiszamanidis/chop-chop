## Ansible

I automated the installation of packages and applications that I use in my daily work for a new Ubuntu system.

If you are fun of bash scripts and want to easily set up your system you can check out my [**ubuntu bootstrap repository**](https://github.com/alexiszamanidis/.ubuntu_bootstrap).

### Docker

Before doing anything, you need to make sure that your machine can run the installation scripts. We can achieve this with Docker.

### Reminders

-   Synchronizes the [**configuration files**](https://github.com/alexiszamanidis/dotfiles) for various programs
-   For VSCode setup, just sign in with your GitHub account
-   For Excalidraw installation I need to download it from the Browser as PWA

### Installation

1. Create `~/.vault_pass.txt` file and lock it down

```
echo "my-vault-password" > ~/.vault_pass.txt && \
chmod 0600 ~/.vault_pass.txt && \
history -c
```

2. Clone the repository and install ansible

```
git clone https://github.com/alexiszamanidis/ansible.git ~/ansible && \
cd ~/ansible && \
git remote set-url origin git@github.com:alexiszamanidis/ansible.git && \
chmod +x ansible docker sync-apps && ./ansible
```

3. Start the installation process

- *Ubuntu*

```
ansible-playbook -t "install,git" --skip-tags win32yank local.yml
```

- *Windows(WSL)*

```
ansible-playbook -t "install,git" --skip-tags "productivity-tools,brave" local.yml
```

3. Restart the terminal

4. Install java and node and manage them via their version managers

```
sdk install java && \
nvm install 16.16.0 && nvm use --delete-prefix v16.16.0 && nvm alias default 16.16.0
```

### Scripts

[Read more](https://github.com/alexiszamanidis/ansible/blob/master/SCRIPTS.md)
