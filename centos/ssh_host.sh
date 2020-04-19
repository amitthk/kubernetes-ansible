ssh -o StrictHostKeyChecking=no -o ProxyCommand="ssh -i ~/.ssh/cdhstack_admin.pem -W %h:%p centos@${BASTION_IP}" -i ~/.ssh/cdhstack_admin.pem centos@$1
