# My Dotfiles Repositiory

This is my personal dotfiles repository, consisting of various configuration files that I share between different Linux and Mac systems.  It mostly contains vim specific settings for now.

## Installation

I'm using a bare git repository to store my dotfiles, [as first described by StreakyCobra on Hacker News](https://news.ycombinator.com/item?id=11071754) and [later documented by Nicola Paolucci for Bitbucket](https://www.atlassian.com/git/tutorials/dotfiles).

When adding the repo to a new machine, I clone to a directory named `.dotfiles` in my home directory:

    git clone --bare https://github.com/jpitoniak/dotfiles $HOME/.dotfiles

Then I set up an alias called "dotfiles" in my shell configuration file(s) (I used different shells on different systems because...reasons...) so that I can easily make commits against the repo with a memorable command:

    # For Bash ($HOME/.bashrc) or Zshell ($HOME/.zsr.d/dotfiles.zsh)
    
    alias dotfiles='/usr/bin/git --gitdir=$HOME/.dotfiles/ --work-tree=$HOME'
    
    # For CShell ($HOME/.cshrc)
    
    alias dotfiles '/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

Once you do that, you'll want to `source` your config to make the alias available, for example:

    source $HOME/.bashrc

Now the `dotfiles` "command" should be available and I can check out the repo:

    dotfiles repo

To keep the `dotfiles status` command's output clean, and to keep it running fast, I also add this setting to show only my tracked files:

    dotfiles config --local stauts.showUntrackedFiles no

## After Checkout

### Vim

The .vimrc file will be autmatically loaded when starting vim, but plugins are not installed automatically. To do that, start vim, press <Esc> and then type `:PlugInstall`.

*More to come...*
