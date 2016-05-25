#!/usr/bin/env bash
HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-playbook -i hosts $@ localhost.yml
