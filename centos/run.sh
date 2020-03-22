ansible-playbook -i hosts -e ansible_ssh_private_key_file=~/.ssh/cdhstack_admin_new.pem -e ansible_become_method=sudo -e ansible_become=yes -e ansible_become_user=root --user=centos $1
