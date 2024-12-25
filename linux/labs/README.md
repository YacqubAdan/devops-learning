lvl9 = FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey -> strings data.txt | grep "=="
lvl10 = dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr -> base64 -d data.txt
lvl11 = dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
lvl12 = 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
lvl13 = FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn -> mkdir /tmp | cat data.txt | xxd -r > /tmp/data
lvl14 = MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS -> ssh -i sshkey.private bandit14@localhost -p 2220 
lvl15 = 8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo -> ncat localhost 30000
lvl16 = kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx -> ncat --ssl localhost 30001
lvl17 = private key -> nmap localhost -p 31000-32000 -> ncat --ssl localhostt 31790 -p 2220
lvl18 = cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8 -> ssh -t bandit18@bandit.labs.overthewire.org -p 2220 /bin/sh 
lvl19 = 0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO -> ./bandit20-do id -> ./bandit20-do cat /etc/bandit_pass/bandit20
lvl20 = EeoULMCra2q0dSkYj561DX7s1CpBuOBt -> ssh on two machines on same level -> ncat -l localhost -p 1234 -> ./suconnect 1234
