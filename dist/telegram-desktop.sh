if ! [ -x "$(command -v telegram-desktop)" ];
    then
        echo "Telegram installation started..."
	sudo add-apt-repository ppa:atareao/telegram	
 	sudo apt install telegram -y
    else
	printf '%s\n' "Telegram is already installed"
  exit 0
fi
