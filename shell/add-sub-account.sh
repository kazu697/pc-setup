echo "[includeIf \"gitdir:~/Develop/$1/\"]\n\tpath = ~/.gitconfig_$1" >> ~/.gitconfig

echo "[user]\n\tname = $2\n\temail = $3 " > ~/.gitconfig_$1