# Configure VSCode as your editor
#git config --global core.editor "code --wait"

# Configure Notepad++ as your editor (this should be selected during installation, but here's the command, just in case)
#git config --global core.editor "'C:\Program Files (x86)\Notepad++\notepad++.exe' -multiInst -notabbar -nosession -noPlugin"

# Configure BeyondCompare for difftool
git config --global diff.tool bc4
git config --global difftool.keepbackup false
git config --global difftool.prompt false
git config --global difftool.trustexitcode true
git config --global difftool.bc4.cmd "'C:\\Program Files\\Beyond Compare 4\\BCompare.exe' -expandall -solo \$LOCAL \$REMOTE"

# Configure P4Merge for mergetool
git config --global merge.tool p4merge
git config --global mergetool.p4merge.keepbackup false
git config --global mergetool.p4merge.prompt false
git config --global mergetool.p4merge.trustexitcode true
git config --global mergetool.p4merge.cmd "'C:\\Program Files\\Perforce\\p4merge.exe' \$BASE \$LOCAL \$REMOTE \$MERGED"

# Bare minimum aliases
git config --global alias.a 'add -A'
git config --global alias.b 'branch'
git config --global alias.bprune "!git branch --merged | egrep -v '(^\\*|master|develop)' | xargs git branch -d"
git config --global alias.c 'checkout'
git config --global alias.cb 'checkout -b'
git config --global alias.diffdir 'difftool --dir-diff --tool=bc4 --no-prompt'
git config --global alias.f 'fetch'
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.lga "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --all"
git config --global alias.lol "log --oneline --graph --all" 
git config --global alias.pom 'push origin master'
git config --global alias.pr 'pull --rebase'
git config --global alias.rc 'rebase --continue'
git config --global alias.ra 'rebase --abort'
git config --global alias.s 'status'

# Colorization
git config --global color.branch "auto"
git config --global color.diff "auto"
git config --global color.status "auto"

git config --global color.branch.current "yellow reverse"
git config --global color.branch.local "yellow"
git config --global color.branch.remote "green"

git config --global color.diff.meta "yellow bold"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.old "red bold"
git config --global color.diff.new "green bold"

git config --global color.status.added "yellow"
git config --global color.status.changed "green"
git config --global color.status.untracked "cyan"