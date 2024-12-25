
# Linux Command Reference by Category  

---

## 1. File and Directory Management  
**Commands to create, delete, move, and manage files and directories.**  

| Command   | Description                              | Example                       |
|-----------|------------------------------------------|-------------------------------|
| `ls`      | List directory contents                  | `ls -la`                      |
| `cd`      | Change directory                         | `cd /home/user`               |
| `pwd`     | Print working directory                  | `pwd`                         |
| `mkdir`   | Create a new directory                   | `mkdir new_folder`            |
| `rm`      | Remove files or directories              | `rm file.txt`                 |
| `rmdir`   | Remove empty directories                 | `rmdir empty_folder`          |
| `cp`      | Copy files/directories                   | `cp file.txt /backup/`        |
| `mv`      | Move/rename files or directories         | `mv old.txt new.txt`          |
| `touch`   | Create an empty file                     | `touch newfile.txt`           |
| `find`    | Search for files                         | `find / -name "*.log"`        |
| `locate`  | Find files by name (uses a database)     | `locate file.txt`             |
| `tree`    | Display directory structure              | `tree /etc/`                  |
| `df`      | Show disk space usage                    | `df -h`                       |
| `du`      | Show directory/file size                 | `du -sh folder/`              |
| `stat`    | Display file details                     | `stat file.txt`               |
| `basename`| Extract filename from a path             | `basename /home/user/file.txt`|
| `dirname` | Extract directory from a path            | `dirname /home/user/file.txt` |
| `lsblk`   | List information about block devices     | `lsblk`                       |

---

## 2. File Viewing and Content Display  
**Commands to read or display file contents.**  

| Command   | Description                              | Example                        |
|-----------|------------------------------------------|--------------------------------|
| `cat`     | Concatenate and display file content     | `cat file.txt`                  |
| `less`    | View file page by page                   | `less /var/log/syslog`          |
| `more`    | View file page by page (simpler than less)| `more file.txt`                 |
| `head`    | Display the first lines of a file        | `head -n 10 file.txt`           |
| `tail`    | Display the last lines of a file         | `tail -n 20 log.txt`            |
| `strings` | Extract human-readable strings from binary| `strings binaryfile`            |
| `grep`    | Search for patterns in files             | `grep "error" log.txt`          |
| `awk`     | Pattern scanning and processing          | `awk '{print $1}' file.txt`     |
| `sed`     | Stream editor (replace text)             | `sed 's/old/new/g' file.txt`    |
| `diff`    | Compare two files                        | `diff file1.txt file2.txt`      |
| `cmp`     | Compare files byte by byte               | `cmp file1 file2`               |
| `xxd`     | Create hexdump of a file                 | `xxd file.txt`                  |

---

## 3. File Editing  
**Commands for editing file content.**  

| Command   | Description                              | Example                        |
|-----------|------------------------------------------|--------------------------------|
| `nano`    | Simple text editor                       | `nano file.txt`                |
| `vim`     | Advanced text editor                     | `vim file.txt`                 |
| `vi`      | vi text editor                           | `vi file.txt`                  |
| `emacs`   | Emacs editor                             | `emacs file.txt`               |
| `echo`    | Print text or append to file             | `echo "Hello" >> file.txt`     |
| `tee`     | Write to file and print to screen        | `echo "Hello" | tee file.txt`  |
| `truncate`| Shrink or extend the size of a file      | `truncate -s 0 file.txt`       |

---

## 4. Process Management  
**Commands to manage and monitor running processes.**  

| Command   | Description                              | Example                        |
|-----------|------------------------------------------|--------------------------------|
| `ps`      | Display running processes                | `ps aux`                       |
| `top`     | Display real-time process info           | `top`                          |
| `htop`    | Interactive process viewer               | `htop`                         |
| `kill`    | Terminate a process by PID               | `kill 1234`                    |
| `killall` | Kill all processes by name               | `killall firefox`              |
| `pkill`   | Kill processes by name                   | `pkill chrome`                 |
| `nohup`   | Run process immune to hangups            | `nohup long_script.sh &`       |
| `jobs`    | List background jobs                    | `jobs`                         |
| `bg`      | Resume a job in the background           | `bg %1`                        |
| `fg`      | Resume a job in the foreground           | `fg %1`                        |
| `nice`    | Start a process with a priority          | `nice -n 10 script.sh`         |
| `renice`  | Change process priority                  | `renice 15 1234`               |
| `xargs`   | Pass output as argument to another command| ``ls | xargs rm``              |

---

## 5. Networking  
**Commands for network configuration, monitoring, and troubleshooting.**  

| Command    | Description                              | Example                         |
|------------|------------------------------------------|---------------------------------|
| `ssh`     | Connect to remote servers                  |`ssh bandit14@localhost -p 2220`|
| `ping`     | Send ICMP echo requests                  | `ping google.com`               |
| `curl`     | Transfer data from URLs                  | `curl https://example.com`      |
| `wget`     | Download files from URLs                 | `wget https://example.com/file` |
| `ifconfig` | Show IP address and network interfaces   | `ifconfig`                     |
| `ip`       | Show/manipulate IP and interfaces        | `ip a`                         |
| `netstat`  | Show network connections                 | `netstat -tuln`                |
| `ss`       | Display socket statistics                | `ss -tuln`                     |
| `traceroute`| Trace the route to a host               | `traceroute google.com`        |
| `nmap`     | Network scanner                          | `nmap 192.168.1.1`             |
| `nslookup` | Query DNS                                | `nslookup example.com`         |
| `dig`      | DNS lookup tool                          | `dig example.com`              |

---

## 6. User Management  
**Commands to manage users and permissions.**  

| Command   | Description                              | Example                        |
|-----------|------------------------------------------|--------------------------------|
| `whoami`  | Show current user                        | `whoami`                       |
| `id`      | Show user ID and group info              | `id`                           |
| `useradd` | Add new user                             | `sudo useradd newuser`         |
| `usermod` | Modify user info                         | `sudo usermod -aG sudo newuser`|
| `passwd`  | Change user password                     | `passwd`                       |
| `groupadd`| Add new group                            | `sudo groupadd devs`           |
| `chmod`   | Change file permissions                  | `chmod 755 file.sh`            |
| `chown`   | Change file owner                        | `chown user:group file.txt`    |
| `sudo`    | Execute command as root                  | `sudo apt update`              |
