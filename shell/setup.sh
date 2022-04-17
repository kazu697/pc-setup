wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash
chmod a+x ~/.git-completion.bash

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh
chmod a+x ~/.git-prompt.sh

cat ./.bashrc >> ~/.bashrc

echo "[user]\n\tname = $1\n\temail = $2 " > ~/.gitconfig

sh ./install-docker.sh $3

source ~/.bashrc