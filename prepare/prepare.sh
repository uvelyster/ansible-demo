#!/bin/bash

mv /etc/hosts /etc/hosts.orig
cp hosts /etc/hosts

ssh-keygen -N '' -f $HOME/.ssh/id_rsa

ssh-copy-id ansible-user@controlplane
ssh-copy-id ansible-user@node01
ssh-copy-id ansible-user@node02
 
ssh controlplane 'hostnamectl set-hostname controlplane'
ssh node01 'hostnamectl set-hostname node01'
ssh node02 'hostnamectl set-hostname node02'
