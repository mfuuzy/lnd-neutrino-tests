#!/usr/bin/expect -f

set timeout 2
set wallet_password "password123"
spawn lncli --network=mainnet unlock
expect "Input wallet password:"
send "$wallet_password\r"
expect eof
