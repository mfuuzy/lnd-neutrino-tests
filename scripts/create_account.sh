#!/usr/bin/expect -f

set wallet_password "password123"
set network "testnet"

spawn lncli --network=${network} create

expect "Input wallet password:"
send "$wallet_password\r"

expect "Confirm password:"
send "$wallet_password\r"

expect "Do you have an existing cipher seed mnemonic or extended master root key you want to use? Enter 'y' to use an existing cipher seed mnemonic, 'x' to use an extended master root key or 'n' to create a new seed (Enter y/x/n):"
send "n\r"

expect "Your cipher seed can optionally be encrypted."
expect "Input your passphrase if you wish to encrypt it (or press enter to proceed without a cipher seed passphrase):"
send "\r"
send "\r"

expect eof