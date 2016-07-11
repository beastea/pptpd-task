Requirements:
1. you need a terraform installed (https://github.com/hashicorp/terraform)
2. you need a terraform-inventory installed (https://github.com/adammck/terraform-inventory)
3. you need an Ansible installed (https://github.com/ansible/ansible)

Running:
git clone git@github.com:beastea/pptpd-task.git
cd repo pptpd-task
terraform apply aws/
ssh-add aws/deployer
ansible-playbook --private-key=aws/deployer --inventory-file=bin/inventory -u admin -b ansible/site.yml
