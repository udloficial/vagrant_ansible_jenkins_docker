#!/bin/bash

set -e

echo "Installing Ansible..."
apt-get update
apt-get install -y ansible
