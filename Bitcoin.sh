#!/bin/bash
sudo --assume-yes add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get -y --force-yes install bitcoin-qt </dev/null

cd ~/
mkdir .bitcoin
cd .bitcoin
touch bitcoin.conf
printf 'listen=1\n   server=1\n   dbcache=50\n   daemon=1\n   testnet=0\n   rpcuser=RPC_USER_NAME\n   rpcpassword=RPC_PASS_WORD' >> bitcoin.conf
bitcoind &




