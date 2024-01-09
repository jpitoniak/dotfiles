# My Dotfiles Repositiory

This is my personal dotfiles repository, consisting of various configuration files that I share between different Linux and Mac systems.  It mostly contains vim and Sublime Text specific settings for now as well as custom profiles (i.e. color schemes) for the Mac Terminal and iTerm2 apps.

## Installation

I'm using a bare git repository to store my dotfiles, [as first described by StreakyCobra on Hacker News](https://news.ycombinator.com/item?id=11071754) and [later documented by Nicola Paolucci for Bitbucket](https://www.atlassian.com/git/tutorials/dotfiles).

When adding the repo to a new machine, I clone to a directory named `.dotfiles` in my home directory:

    git clone --bare https://github.com/jpitoniak/dotfiles $HOME/.dotfiles

Then I set up an alias called "dotfiles" in my shell configuration file(s) (I used different shells on different systems because...reasons...) so that I can easily make commits against the repo with a memorable command:

    # For Bash ($HOME/.bashrc) or Zshell $HOME/.zshrc)
    
    alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    
    # For CShell ($HOME/.cshrc)
    
    alias dotfiles '/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

Once you do that, you'll want to `source` your config to make the alias available, for example:

    source $HOME/.bashrc

Now the `dotfiles` "command" should be available and I can check out the repo:

    dotfiles checkout

To keep the `dotfiles status` command's output clean, and to keep it running fast, I also add this setting to show only my tracked files:

    dotfiles config --local stauts.showUntrackedFiles no

## After Checkout

### Vim

The .vimrc file will be autmatically loaded when starting vim, but plugins are not installed automatically. To do that, start vim, press &lt;Esc&gt; and then type `:PlugInstall`.

### Sublime Text

When running Sublime Text for the first time on a new system, open the command palet and select "Install Package Control."  Once installed, Package Control will automatically download and install all of the packages specified the "Package Control.sublime-settings" file each time the app is opened.

### Mac Terminal.app

A custom color scheme based on Sublime Text's *Mariana* theme can be found in the extras/Terminal directory.  It can be imported by going to Terminal > Settings..., clicking the menu button at the bottom of the *Profiles* tab, and chosing Import...

### Mac iTerm2

A similar color theme for iTerm2 is available in the extras/iTerm2.  To import go to iTerm2 > Settings... and then click on Other Actions... > Import JSON Profiles... on the *Profiles* tab.
*More to come...*
