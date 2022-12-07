if ! [ -x "$(command -v git)" ]; 
    then
        echo "Git installation started..."
        sudo apt install -y git
    else
        echo $(git --version) "is already installed, at:" $(command -v git)
  exit 0 
fi
