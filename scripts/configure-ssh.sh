#!/usr/bin/env bash

# Further information
# https://superuser.com/questions/215504/permissions-on-private-key-in-ssh-folder

# Authorized_keys file needs 644 permissions
# chmod 644 /home/$USER/.ssh/authorized_keys

# Make sure that user owns the files/folders and not root: chown user:user authorized_keys and
# chown user:user /home/$USER/.ssh

chmod -R 644 ~/.ssh/*
chmod 600 ~/.ssh/id_rsa
chmod 600 ~/.ssh/config
