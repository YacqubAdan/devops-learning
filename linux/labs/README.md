# Bandit Level Solutions

## Level 9
**Password:** FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey

### Goal
The password for the next level is stored in `data.txt` and is on a line that contains `==`.

```sh
strings data.txt | grep "=="
```

### Explanation of the Commands

1. `strings`
  - **Extracts readable text** from `data.txt` which at the moment contain binary data.
  - This **filters out characters** leaving only human readable strings.
2. `|` (Pipe)
  - **Passes the output** of `strings` as input to the grep command
3. `gerp "=="`
  - **Searches for lines** containing `==` symbol.  


## Level 10
**Password:** dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr

### Goal
The password for the next level is stored in the file `data.txt`, which contains `base64` encoded data.

```sh
base64 -d data.txt
```

### Explanation of the Commands

1. `base64`
 - Encodes and decodes data using Base64 encoding scheme.
2. `-d` 
 - When used with the `-d` option, it decodes the `Base64` encoded content back to its **original binary form**.


## Level 11
**Password:** dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr

### Goal
The password for the next level is stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions

### Explanation of the Commands

Rot13 on Wikipedia - we used Rot13 to get the password for the next level.


## Level 12
**Password:** FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn

### Goal
The password for the next level is stored in the file data.txt, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work. Use mkdir with a hard to guess directory name. Or better, use the command “mktemp -d”. Then copy the datafile using cp, and rename it using mv (read the manpages!)

```sh
mkdir /tmp
cat data.txt | xxd -r > /tmp/data
```
### Explanation of the Commands

1. `mkdir /tmp/tmpdata`
 - Encodes and decodes data using Base64 encoding scheme.
2. `xxd data.txt > /tmp/tmpdata/data` 
 - Make a hexdump or do reverse 
 - store that into the tmp folder we have just created as a file named data 
3. `file` 
 - To check the file type as we decompress the data 
4. `gzip bzip2 tar`
 - The different file types we are dealing with and these commands help us to decompress the data
5. `mv data data.gz/bz2/tar`
6. `cat`
 - To finally view the content of the data file and retreive password

## Level 13
**Password:** MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS

### Goal
The password for the next level is stored in /etc/bandit_pass/bandit14 and can only be read by user bandit14. For this level, you don’t get the next password, but you get a private SSH key that can be used to log into the next level. Note: localhost is a hostname that refers to the machine you are working on

```sh
ssh -i sshkey.private bandit14@localhost -p 2220
```

### Explanation of the Commands

1. `ssh`
 - This is the command to initiate an ssh connection
2. `-i sshkey.private bandit14@localhost` 
 - specifies the private key file `sshkey.private` to use for authentication. Bandit14 being the hostname
3. `-p 2220`
 - port 2220

## Level 14
**Password:** 8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo

### Goal
The password for the next level can be retrieved by submitting the password of the current level to port 30000 on localhost.

```sh
ncat localhost 30000
```

### Explanation of the Commands

1. `ncat localhost 3000`
 - This is the command to initiate a network connection using ncat


## Level 15
**Password:** kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx

### Goal
The password for the next level can be retrieved by submitting the password of the current level to port 30001 on localhost using SSL/TLS encryption.

```sh
ncat --ssl localhost 30001
```

### Explanation of the Commands

1. `ncat --ssl localhost 3000`
 - This option specifies that the connection should use SSL/TLS encryption for secure communication


## Level 16
**Password:** private key
The credentials for the next level can be retrieved by submitting the password of the current level to a port on localhost in the range 31000 to 32000. First find out which of these ports have a server listening on them. Then find out which of those speak SSL/TLS and which don’t. There is only 1 server that will give the next credentials, the others will simply send back to you whatever you send to it.

### Goal 

```sh
nmap localhost -p 31000-32000
ncat --ssl localhost 31790 -p 2220
```

### Explanation of the Commands

1. `nmap`
 - Scans the local machine for open ports in the range 31000-32000 showing which ports are open.
2. `-p 31000-32000`
 - Looking for the range of ports between 31000-32000 

## Level 17
**Password:** cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8

### Goal 
There are 2 files in the homedirectory: passwords.old and passwords.new. The password for the next level is in passwords.new and is the only line that has been changed between passwords.old and passwords.new

```sh
ssh -t bandit18@bandit.labs.overthewire.org -p 2220 /bin/sh
```

### Explanation of the Commands

1. `ssh`
 - This is the command to initiate an ssh connection
2. `-t`
 - We can use this to start the session in a different shell environment to bypass the issue with bash configur file
3. `/bin/sh`
 - Opens a shell on the remote server


## Level 18
**Password:** 0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO

### Goal
The password for the next level is stored in a file readme in the homedirectory. Unfortunately, someone has modified .bashrc to log you out when you log in with SSH.

```sh
./bandit20-do id
./bandit20-do cat /etc/bandit_pass/bandit20
```

### Explanation of the Commands
1. `./bandit20-do id`
 - This command runs the `id` command as the `bandit20` user. It helps us verify that we are executing commands as the correct user.
2. `./bandit20-do cat /etc/bandit_pass/bandit20`
- This command runs the cat command as the bandit20 user to read the password file located at /etc/bandit_pass/bandit20. The output will be the password for the next level.

## Level 19-20
**Password:** EeoULMCra2q0dSkYj561DX7s1CpBuOBt

### Goal
To gain access to the next level, you should use the setuid binary in the homedirectory. Execute it without arguments to find out how to use it. The password for this level can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.

```sh
# On two machines on the same level:
ncat -l localhost -p 1234
./suconnect 1234
```

### Explanation of the Commands

1. Use the setuid Binary: The setuid binary is a special type of executable that runs with the privileges of the file's owner. In this case, it allows us to execute commands with elevated privileges. Execute the setuid binary without arguments to find out how to use it:
2. `./suconnect`
 - This will display usage instructions for the suconnect binary.
3. `ncat -l localhost -p`
 - Set Up a Listener on One Machine: On one machine, set up a listener using ncat to listen for incoming connections on port 1234:
 - This command tells ncat to listen on localhost (the local machine) on port 1234 for incoming connections.
4. `./suconnect 1234`
 -  Connect to the Listener from Another Machine: On another machine, use the suconnect binary to connect to the listener on port 1234:
 -  This command tells the suconnect binary to connect to the listener on localhost at port 1234.
5. **Retrieve the Password**
 - Once the connection is established, the suconnect binary will use the elevated privileges to access the password file located at /etc/bandit_pass/bandit20. The password for the next level will be displayed.



