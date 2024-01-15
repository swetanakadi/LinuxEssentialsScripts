#!/bin/bash

mkdir archive
#The easiest way to remove the path names is to work from the directory where the files to be archived are located.
cd /var/log
# creating archive
tar -cvf ~/archive/log.tar *.log
# listing archive
tar -tf ~/archive/log.tar
# extract archive in backup dir
mkdir ~/backup
cd backup
tar -xf ~/archive/log.tar

# OUTPUT
#alternatives.log
#auth.log
#bootstrap.log
#cron.log
#dpkg.log
#kern.log
#mail.log