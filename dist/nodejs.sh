if ! [ -x "$(command -v nodejs)" ];
    then
        echo "NodeJS installation started..."
	curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -	
	sudo apt install -y nodejs 
    else
        printf '%s\n' "NodeJS version: $(nodejs -v) is already installed, at: $(command -v nodejs)"
  exit 0
fi
