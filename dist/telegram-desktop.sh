if ! [ -x "$(command -v telegram-desktop)" ];
    then
        echo "Telegram installation started..."
	sudo apt install telegram-desktop -y
    else
	printf '%s\n' "Telegram is already installed"
  exit 0
fi
