#!/bin/sh

# run in ~ directory
main(){
    # install Zsh ------------------------------------------
        # sudo apt-get install zsh
    echo installing zsh
    brew install zsh zsh-completions

    # set Zsh as login shell
    echo setting zsh as login shell
    chsh -s $(which zsh)

    # change shell to Zsh
    #echo running zsh
    #zsh

    # download TB dotfiles- -----------------------------------------
    # install thoughtbot dot files
    echo cloning thoughtbot dotfiles to ~ directory
    git clone git://github.com/thoughtbot/dotfiles.git $HOME/dotfiles

    # install oh my Zsh via wget ------------------------------------------
    echo installing ohmyzsh
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

    # install rcm ------------------------------------------
    echo installing rcm
    brew tap thoughtbot/formulae

    brew install rcm 
    brew reinstall rcm

    # install dot files 
    #This command will create symlinks for config files in your home directory.
    echo running rcup and symlinking
    env RCRC=$HOME/dotfiles/rcrc rcup
    rcup

    
}

main
