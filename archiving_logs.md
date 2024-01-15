# Instructions
### Case Scenario
There has been suspicious activity on the system. In order to preserve log information, it will be necessary to archive the current files in /var/log ending with the .log extension. The files are to be saved to a file named log.tar, stored in the directory, ~/archive.

It has also been requested that the files that were archived be saved to a directory, ~/backup.

### Objectives
* Create an archive named log.tar that is stored in the archive directory located in the home directory.
* Remove path names from the files that are archived.
* Produce verbose output while archiving.
* List the contents of the archive without extracting.
* Extract the files to the directory, ~/backup.
### Curriculum Resources
* Module 6 - Getting Help
* Module 7 - Navigating the Filesystem
* Module 8 - Managing Files and Directories
* Module 9 - Archiving and Compression
### Deliverables
* Provide the final commands for successful completion.
* Provide screen captures of the commands required to complete the tasks.
* The final result of the archive listing should match the following:
> alternatives.log 
> auth.log
> bootstrap.log
> cron.log
> dpkg.log
> kern.log
> mail.log


The final result of the listing of the backup directory should match the following:

>sysadmin@localhost:~/backup$ ls  
>alternatives.log  
> bootstrap.log   
> dpkg.log  
> mail.log 
> auth.log          
> cron.log       
> kern.log