#!/usr/bin/env bash
ansible-playbook -i hosts $@ localhost.yml
