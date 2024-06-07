#!/bin/bash

# Check the last version at:  https://go.dev/dl/
GOVERSION="1.22.4"

# Download the Go Installation Files (binary archive):
[ -d /usr/local/go ] && echo "$(go version) is already installed at: $(command -v go)" &&  exit 1
wget https://go.dev/dl/go${GOVERSION}.linux-amd64.tar.gz
# curl -OL https:/go.dev/dl/go${GOVERSION}.linux-amd64.tar.gz

# Extract the archive and Install Go:
sudo tar -xzf go${GOVERSION}.linux-amd64.tar.gz -C /usr/local/

# Set trap to delete installation archive file on error or exit:
trap "/usr/bin/rm go1*" ERR EXIT

# Adding Go to Path:
grep -q "/usr/local/go" ~/.bashrc || \
	printf "export GOPATH=$HOME/go\nexport PATH=$PATH:/usr/local/go/bin:$GOPATH/bin\n" >> ~/.bashrc 
#exec $SHELL
 . ~/.bashrc

#  Check the installed version:
echo $(go version)
exit
