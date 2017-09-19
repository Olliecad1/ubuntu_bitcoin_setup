#!/bin/bash
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install bitcoin-qt bitcoind

cd ~/
mkdir .bitcoin
cd .bitcoin
touch bitcoin.conf
printf 'listen=1\n   server=1\n   dbcache=50\n   daemon=1\n   testnet=0\n   rpcuser=RPC_USER_NAME\n   rpcpassword=RPC_PASS_WORD' >> bitcoin.conf
bitcoind &




