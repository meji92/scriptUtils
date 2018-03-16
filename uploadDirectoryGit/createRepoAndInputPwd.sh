#!/usr/bin/expect -f
 
set timeout -1

set reponame [lindex $argv 0]
set username [lindex $argv 1]
set password [lindex $argv 2]

spawn ./createRepoAndPush.sh  $reponame $username

expect "Enter host password for user '$username':"
 
send -- "$password\r"

expect "Username for 'https://github.com':"

send -- "$username\r"

expect "Password for 'https://$username@github.com':"

send -- "$password\r"

interact
