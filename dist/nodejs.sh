if ! [ -x "$(command -v node)" ];
    then
        echo "NodeJS installation started..."
	curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -	
	sudo apt install -y nodejs 
    else
        printf '%s\n' "NodeJS version: $(node -v) is already installed, at: $(command -v node)"
  exit 0
fi
