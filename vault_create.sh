mv vault-pass old-vault-pass
openssl rand -hex 32 > vault-pass
ansible-vault rekey  --new-vault-password-file vault-pass --vault-password-file old-vault-pass secret.yml
