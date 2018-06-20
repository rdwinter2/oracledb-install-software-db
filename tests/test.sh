#!/usr/bin/env bas
cd /opt/ansible
. /opt/ansible/hacking/env-setup -q
cd $OLDPWD

PATH=/opt/ansible/bin:$PATH

ansible-playbook -v test.yml -i inventory --forks 5 --syntax-check

env ANSIBLE_FORCE_COLOR=1 ansible-playbook -v test.yml -i inventory --forks 5

ansible-playbook -v test.yml -i inventory --forks 5 \
  | grep -q 'changed=0.*failed=0' \
  && (echo 'Idempotence test: pass' && exit 0) \
  || (echo 'Idempotence test: fail' && exit 1)
