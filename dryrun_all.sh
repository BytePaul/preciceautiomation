#!/bin/bash
set -e

echo "Dry-running all playbooks in playbooks/..."

for playbook in playbooks/*.yml; do
  echo "--------------------------------------------------"
  echo "Dry-running: $playbook"
  ansible-playbook -i inventory.ini "$playbook" --check
  echo "--------------------------------------------------"
done
