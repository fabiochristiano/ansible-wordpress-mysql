path=$(pwd)

if [ -f "./hosts" ]; then
  rm hosts
fi  

ssh-keygen -R "172.17.177.40"
ssh-keygen -R "172.17.177.42"
ssh-keyscan -H 172.17.177.40 >> ~/.ssh/known_hosts
ssh-keyscan -H 172.17.177.42 >> ~/.ssh/known_hosts


echo "[wordpress]" > hosts
echo "172.17.177.40 ansible_user=vagrant ansible_ssh_private_key_file=\"${path}/.vagrant/machines/wordpress/virtualbox/private_key\"" >> hosts
echo "" >> hosts
echo "[database]" >> hosts
echo "172.17.177.42 ansible_user=vagrant ansible_ssh_private_key_file=\"${path}/.vagrant/machines/mysql/virtualbox/private_key\"" >> hosts
