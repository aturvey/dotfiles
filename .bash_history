git diff
git add -u
git status -s
git diff
echo 'here is some more stuff' >> file7
git status -s
git diff
git log
git diff 
git add -u
git diff
git diff 684a1
git diff --staged
git diff --staged > diff-staged
git diff
git status -s
git add -u
git status -s
git diff
vim vile7
git diff
git status -s
git add -u
git status -s
git add diff-staged
git status -s
git reset diff-staged
git status -s
git add -u
git status -s
rm diff-staged 
git status -s
git commit -am 'just some files and directories added as I play around with git'
git log
git branch
git merge test
git branch
git branch -d test
git branch
ll
git push origin master
vim file7
git status -s
git stash
git stash list
ll
cat file7
git log
git checkout 6ef22
ll
git log
git checkout 50b3
git log
ll
git checkout 6a877
git log
ll
git checkout 28916
ll
git log
git stash list
git checkout master
ll
cat file7
git stash pop
cat file7
git reset --hard
ll
cat file7
git stash list
git stash clear
vim file7
git stash
ll
cat file7
vim file7
cat file7
git stash pop
ll
cat file7
git stash file7
git stash
git stash list
git stash apply 1
git stash
git stash list
git stash clear 0
git stash list
cat file7
git stash pop
cat file7
git stash list
git stash
git stash list
git stash apply 2
cat file7
git stash list
git reset --hard
git stash apply 1
cat file7
git reset --hard
git stash clear
cd
cd Coursera/Embedded\ Systems/Week4
ll
cd src/
ll
git status -s
ll
git branch -a
git status -s
vim memory.c 
git statu s-s
git status -s
ll
cd ..
make clean
ll
git status -s
git add -A
git status -s
git commit -m 'Final commit for this module'
git push origin master
git log
git fetch origin master
git branch -a
git branch -d final
git branch -D final
git push origin :final
git branch -a
ll
make all
./main
ll
git status -a
git status -s
git add main
git commit -m 'OK, one more commit to add main'
git push origin master
ll
make info
make all
vim Makefile 
lla
rm .Makefile.swp 
ll
git status -s
git commit -am 'Fixed Makefile for Linux compatibility, and updated .gitignore file'
git push origin master
git tag
git config --global alias.stat 'status -s'
git stat
git status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git last
git stat
git status -s
git status
touch deleteme
git stat
rm deleteme 
git config --global alias.logp 'log --pretty=oneline'
git config --global alias.logs 'log --stat'
git config --global alias.logg 'log --pretty=format:" %h  %s" --graph'
git logg
git logs
git logp
git log --pretty=format:" %h %s"
git logs
git log --pretty=oneline --graph
git log --pretty=oneline --stat
git logp
git logg
git stat
git config --global alias.br branch
git config list
git config --list
git logp
git config --list
git logp
git tag -a mod1.wk4 477f25
git tag
git show mod1.wk4 
git push origin mod1.wk4 
git remote origin show
git remote show
git show origin
git show remote -v
git remote show -v
git remote show 
git remote show origin
git br -a
git config --global alias.co checkout
git co
git stat
cd ..
ll
cd ..
ll
cd Embedded\ Systems/
git config --global alias.last 'log -1 HEAD --stat'
git last
ll
cd Week4
ll
make all
./main
ll
git stat
git tag
cd ..
ll
cd ..
ll
cd ..
ll
llr
cd deleteme/
ll
cd ..
rm -rf deleteme/
git clone https://github.com/afosdick/ese-coursera-course1.git
llr
cd ese-coursera-course1/
ll
cd assessments/
ll
cd m2
ll
cd ..
cd m3
ll
vim main.c 
cd ..
ll
cd
cd Coursera/Embedded\ Systems/Week3
ll
cd
llr
cd ese-coursera-course1/
ll
cd assessments/
ll
cd ..
cd demos/
ll
cd m2
ll
cat v2
cd v2
ll
cat Demo_Commands.txt 
cd ..
ll
cd v2
ll v3
cd ..
ll
ll v3
cat v3/Demo_Commands.txt 
cd ..
ll
cd m3
ll
cd v8
ll
less Demo_Commands.txt 
ll
less Makefile 
less Makefile 
make all
ll
ssh 192.168.1.72
cd
cd iX500/
cd INBOX/
ll
rm *.pdf
ls
ll
cd ..
ll
rm INBOX/
rmdir INBOX/
ll
cd KT\ Docs/
ls
ll
cd ..
cd Tscan/
ll
cd ..
ll
cd ..
ll
cd iX500/
ll
cd Trash/
ll
cd ..
ll
which shred
brew update
ll
brew search 
brew search shred
clear
cd
mkdir Cstuff
cd Cstuff/
ll
vim test.c
clear
cd ..
mkdir C
cd C
cd ..
cd del
llr
cd Cstuff/
ll
cd ..
ll
llr
cd temp
ll
lla
cd ..
find . -name .gitignore
cd Coursera/Embedded\ Systems/
ll
lla
cat .gitignore 
cp .gitignore ~/C
cd
cd C
ll
vim README.md
lla
git init
git add README.md .gitignore
git stat
git origin
git show
git show origin
git remote
git remote show
git remote add origin git@github.com:aturvey/c.git
git commit -m "Initial commit"
git push -u origin master
cd .git
ll
cat config 
cd ..
cd ..
cd .gitconfig 
cat .gitconfig 
pwd
llr
cd C
ll
git stat
git logp
git show
git show origin
git origin show
git remote show
git remote show -v
ll
git stat
git remote show all
git help remote
git remote 
git remote  -v
git pull
ll
git stat
git logp
ll
vim test.c
gcc -Wall -std=c99 -o test test.c
gcc -Wall -std=c99 -o test test.c
gcc -Wall -std=c99 -o test test.c
gcc -Wall -std=c99 -o test test.c
gcc -Wall -std=c99 -o test test.c
gcc -Wall -std=c99 -o test test.c
gcc -Wall -std=c99 -o test test.c
./test
./test
git stat
git add -A
git commit -m "Revamped parameter data structure. Compiles but bombs if parameters are provided."
git push origin
which tmux
tmux ls
tmux
tmux ls
tmux at 0
tmux at t 0
tmux attach-session
tmux
tmux
tmux ls
tmux at
tmux at 0
tmux at -t 0
tmux new -s test
tmux ls
tmux at -t test
tmux ls
tmux at -t 0
cd
ll
cd temp/
cls
cd
vim .tmux.conf 
/Users/aturvey/syncthing-macosx-amd64-v0.14.29/syncthing ; exit;
bg
exit
vim deletme.txt
exit
echo $TERM
exit
exit
fortune | cowsay | lolcat
cls
fortune | cowsay | lolcat
fortune | cowsay | lolcat
cls
cls; fortune | cowsay | lolcat
cls; fortune | cowsay | lolcat; echo
exit
exit
htop
exit
echo $TERM
vim .vimrc
vim .vimrc
exit
exit
vim .vimrc
echo $TERM
vim .vimrc
echo $TERM
vim .vimrc
source .bashrc
echo $TERM
exit
echo $TERM
:q
cat .tmux.conf 
vim .vimrc
exit
fortune | cowsay | lolcat
cls; fortune | cowsay | lolcat ; echo
clear;ls
exit
clear;ls
clear;date
 clear ; date 
 clear ; date 
 clear ; date 
 clear ; date 
 clear ; date 
 clear ; date 
ls
ls
ls
ls
 clear ; date 
exit
vim .vimrc
tmux s
tmux s
exit
 clear ; date 
 clear ; date 
vim .tmux.conf 
exit
cd Zmu/
git status
cd
which vim
cd /usr/local/Cellar/
ll
cd vim/
ll
cd 8.0.0893/
ll
cd bin/
ll
pwd
exit
 clear ; date 
ls
 clear ; date 
 clear ; date 
