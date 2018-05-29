path=$(pwd)
rm -rf hosts

echo "[wordpress]" > hosts
echo "172.17.177.40 ansible_user=vagrant ansible_ssh_private_key_file=\"${path}/.vagrant/machines/wordpress/virtualbox/private_key\"" >> hosts
echo "" >> hosts
echo "[database]" >> hosts
echo "172.17.177.42 ansible_user=vagrant ansible_ssh_private_key_file=\"${path}/.vagrant/machines/mysql/virtualbox/private_key\"" >> hosts
