# install antigen
curl -L git.io/antigen > antigen.zsh
source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
cp $HOME/dotfiles-local/zsh/wades.zsh-theme $HOME/.antigen/bundles/robbyrussell/oh-my-zsh/custom/themes/wades.zsh-theme
antigen theme wades

# Tell Antigen that you're done.
antigen apply
