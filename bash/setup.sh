# remove old bash config
rm -f ~/.bash_profile
rm -f ~/.bashrc
rm -f ~/.bash_login
rm -f ~/.bash_logout

# symlink new bash config
ln -s ~/.kk-system/bash/rc.bash ~/.bashrc
ln -s ~/.kk-system/bash/login.bash ~/.bash_login
ln -s ~/.kk-system/bash/logout.bash ~/.bash_logout