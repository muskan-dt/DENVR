# Installation Guide

## Ubuntu/Debian
```bash
sudo apt update
sudo apt install -y python3 python3-pip nodejs npm rustc cargo golang
macOS
bash
brew install python node rust go
Windows (WSL2)
bash
# In WSL Ubuntu
sudo apt update
sudo apt install -y python3 python3-pip nodejs npm
# Install Rust via rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Install Go
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz
Python Packages
bash
pip install sympy numpy sage-all jupyter
Node.js Packages
bash
npm install -g typescript ts-node
npm install react react-dom next
Verify Installation
Run: ./verify-install.sh
