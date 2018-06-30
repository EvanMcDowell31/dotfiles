!/bin/zsh

# install Zsh ------------------------------------------
    # sudo apt-get install zsh
brew install zsh zsh-completions

# set Zsh as login shell
chsh -s $(which zsh)

# install thoughtbot dot files
git clone git://github.com/thoughtbot/dotfiles.git

# install rcm
brew tap thoughtbot/formulae
brew install rcm 
#brew reinstall rcm

# install dot files 
#This command will create symlinks for config files in your home directory.
env RCRC=$HOME/dotfiles/rcrc rcup
#rcup

# install oh my Zsh via wget ------------------------------------------
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


# install antigen ------------------------------------------
curl -L git.io/antigen > antigen.zsh
source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
#add other bundles here

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply