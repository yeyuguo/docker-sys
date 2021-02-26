# todo 更改成变量
NODE_VERSION=10.4.0
# nvm environment variables
NVM_DIR=/usr/local/nvm

# install nvm
# https://github.com/creationix/nvm#install-script
	# install node and npm
# curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | bash
# curl https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source $NVM_DIR/nvm.sh \
	&& nvm install $NODE_VERSION \
	&& nvm alias default $NODE_VERSION \
	&& nvm use default

# add node and npm to path so the commands are available
# NODE_PATH=$NVM_DIR/v$NODE_VERSION/lib/node_modules
PATH=$NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

node -v


/script/docker/create-npm.sh