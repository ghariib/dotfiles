########## Variables

dir=~/dotfiles        	 			       	# dotfiles directory
olddir=~/dotfiles_old             			# old dotfiles backup directory
files=".bashrc .bash_aliases"        	# list of files/folders to symlink in homedir
mc_conf=~/.config/mc/ini
##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
  mkdir -p ~/$olddir
echo "...done"

# copy midnight commander config files
echo "Creating backup of midnight commander config file"
  mv $mc_conf $olddir/ini_mc_backup
echo "...done"
echo "Creating symlink to $mc_conf in mc directory"
  ln -s $dir/ini $mc_conf
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
  cd $dir
echo "...done"

# move all your dotfiles in homedir to dotfiles directory
# for moving in $files; do
#     echo "Moving any existing dotfiles from ~ to $dir"
#     mv ~/$moving ~/dotfiles/
#     echo "Creating symlink to $moving in home directory."
#     ln -s $dir/$moving ~/$moving
# done

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done

source ~/.bashrc
source ~/.bash_aliases
