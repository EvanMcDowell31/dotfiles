Evans dotfiles
===================

Install
-------

```git clone https://github.com/EvanMcDowell31/dotfiles.git ~/evansdotfiles/dotfiles```
run ```~/evansdotfiles/dotfiles/init/init.sh``` in ~ directory

Install antigen 
---------------

```curl -L git.io/antigen > antigen.zsh```
```source ~/antigen.zsh```

Load the oh-my-zsh's library.

```antigen use oh-my-zsh```

Bundles from the default repo (robbyrussell's oh-my-zsh).

```antigen bundle git```
```antigen bundle zsh-users/zsh-syntax-highlighting```

copy wades theme into antigen theme directory

```cp ../dotfiles/antigen/wades.zsh-theme``` ```$HOME/.antigen/bundles/robbyrussell/oh-my-zsh/themes/wades.zsh-theme```

Load the theme.

```antigen theme wades```

Tell Antigen that you're done.

```antigen apply```

enjoy