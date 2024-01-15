#!/bin/bash
echo "Enter group name:"
read group_name
getent group $group_name
#echo "Exit status of getent command $?"
while [ $? -eq 0 ]; do
  echo "Group $group_name already exists. Please enter different group name:"
  read group_name
  grep $group_name /etc/group
done
echo "Enter username:"
read username
grep $username /etc/passwd
while [ $? -eq 0 ]; do
  echo "User $username already exists. Please enter a different user name:"
  read username
  grep $username /etc/passwd
done

sudo groupadd $group_name
sudo useradd -m -s /bin/bash -g $group_name -p $username $username
sudo mkdir /$username
sudo chown $username:$group_name /$username
sudo chmod u+rwx,g+rwx,o+t,o-rw /$username