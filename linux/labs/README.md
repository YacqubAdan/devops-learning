# Bandit Level Solutions

## Level 9
**Password:** FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey

```sh
strings data.txt | grep "=="
```

## Level 10
**Password:** dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr

```sh
base64 -d data.txt
```

## Level 11
**Password:** dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr


## Level 12
**Password:** 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4


## Level 13
**Password:** FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn

```sh
mkdir /tmp
cat data.txt | xxd -r > /tmp/data
```

## Level 14
**Password:** MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS

```sh
ssh -i sshkey.private bandit14@localhost -p 2220
```

## Level 15
**Password:** 8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo

```sh
ncat localhost 30000
```

## Level 16
**Password:** kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx

```sh
ncat --ssl localhost 30001
```

## Level 17
**Password:** private key

```sh
nmap localhost -p 31000-32000
ncat --ssl localhost 31790 -p 2220
```

## Level 18
**Password:** cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8

```sh
ssh -t bandit18@bandit.labs.overthewire.org -p 2220 /bin/sh
```

## Level 19
**Password:** 0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO

```sh
./bandit20-do id
./bandit20-do cat /etc/bandit_pass/bandit20
```

## Level 20
**Password:** EeoULMCra2q0dSkYj561DX7s1CpBuOBt

```sh
# On two machines on the same level:
ncat -l localhost -p 1234
./suconnect 1234
```

