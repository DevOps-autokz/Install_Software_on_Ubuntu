if ! [ -x "$(command -v jetbrains-toolbox)" ];
    then
        echo "jetbrains-toolbox installation started..."
	# Install FUSE:
	sudo add-apt-repository universe && \
	sudo apt install libfuse2

	# Install jetbrains-toolbox:
	curl -fsSL https://raw.githubusercontent.com/nagygergo/jetbrains-toolbox-install/master/jetbrains-toolbox.sh | bash && \
	/opt/jetbrains-toolbox/jetbrains-toolbox &
    else
	printf '%s\n' "Jetbrains-toolbox is already installed, at: $(command -v jetbrains-toolbox)"
  exit 0
fi

### Manual installation of jetbrains-toolbox:
# wget https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-1.27.2.13801.tar.gz
# sudo tar -xzf jetbrains-toolbox-1.17.7391.tar.gz -C /opt

### WebStorm Standalone installation:
# wget https://download.jetbrains.com/webstorm/WebStorm-2022.3.1.tar.gz?_gl=1*1i50aus*_ga*OTQxNjIyNDA0LjE2NzIyMjU2Mjk.*_ga_9J976DJZ68*MTY3MjIzMjI2OS4yLjEuMTY3MjIzMjMyNC41LjAuMA..
# sudo tar xzf WebStorm-*.tar.gz -C /opt/
# /opt/WebStorm.sh 
