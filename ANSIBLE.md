### Ansible Notes

List tags

```
ansible-playbook --list-tags local.yml
```

Run specific tag(e.g tag: zsh)

```
ansible-playbook -t <your-tag> local.yml
```

Run multiple tags

```
<!-- e.g. ansible-playbook --ask-vault-pass -t "dotfiles,personal-projects" local.yml -->
ansible-playbook -t "<your-tag-1>,<your-tag-2>" local.yml
```

Run specific tag that needs your vaulted password(e.g tag: ssh)

```
ansible-playbook --ask-vault-pass -t <tag> local.yml
```

Encrypt file

```
sudo ansible-vault encrypt <path-to-your-file>
```

Change vault password

```
sudo ansible-vault rekey <path-to-your-file>
```
