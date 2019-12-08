# Copy git-completion.bash & git-prompt to user directory - from https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
cp git_contrib/completion/* ~
echo 'source ~/git-completion.bash' >> ~/.bashrc

# Enable better git prompt - from https://github.com/lyze/posh-git-sh
echo 'source ~/git-prompt.sh' >> ~/.bashrc
echo 'export PROMPT_COMMAND='\''__posh_git_ps1 "\\[\[\e[0;32m\]\u@\h \[\e[0;33m\]\w" " \[\e[1;34m\]\n\$\[\e[0m\] ";'\''$PROMPT_COMMAND'  >> ~/.bashrc

mkdir /c/repos -p
echo 'cd /c/repos' >> ~/.bashrc