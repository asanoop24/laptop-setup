echo "updating apt package manager"
sudo apt-get update

echo "installing basic utilities e.g. curl..."
sudo apt-get install curl wget build-essential libssl-dev

echo "downloading & installing chrome latest stable version"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo "installing & setting up git"
sudo apt-get install git-core
git config --global user.name "Anoop Sharma"
git config --global user.email "asanoop24@gmail.com"

echo "setting up ssh key"
ssh-keygen -t rsa -b 4096 -C "asanoop24@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

echo "downloading & installing vscode"
sudo snap install code --classic

echo "installing & setting up zsh"
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "installing fira code"
sudo apt install fonts-firacode

echo "installing vscode extensions"
code --install-extension ms-python.python
code --install-extension njpwerner.autodocstring
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension donjayamanne.githistory
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension aaron-bond.better-comments
code --install-extension oderwat.indent-rainbow
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode-remote.remote-containers
code --install-extension redhat.vscode-yaml
code --install-extension rangav.vscode-thunder-client
code --install-extension PKief.material-icon-theme
code --install-extension zhuangtongfa.Material-theme


# sqlite
# postgresql


echo "installing python and its dev tools"
sudo apt update
sudo apt -y upgrade
sudo apt install -y python3-pip
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev
sudo apt install -y python3-venv


echo "installing docker engine"
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo service docker start
sudo docker run hello-world
sudo apt-get install docker-compose-plugin