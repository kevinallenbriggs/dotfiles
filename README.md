# Setup

```bash
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
echo "alias dot=dotfiles" >> $HOME/.zshrc

mkdir -p $HOME/.dotfiles
git clone --bare git@github.com:kevinallenbriggs/dotfiles.git $HOME/.dotfiles
dotfiles config --local status.showUntrackedFiles no
cd $HOME
dotfiles checkout # Linux
dotfiles checkout wsl # Windows/WSL
```

# Software

- git
- [lazygit](https://github.com/jesseduffield/lazygit?tab=readme-ov-file#installation)
- [nvim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- zsh
- oh-my-zsh
- nvm / node
- docker
- openvpn
- remmina/rdp
- dotfiles
- jq
- repos
- alacritty
- shopify cli
- command-not-found
- glances
- 7z
- flameshot
- slack
- zoom
- tmux
- tpm
- clipboard-cli (`npm install -g clipboard-cli`)

# See Also

https://www.atlassian.com/git/tutorials/dotfiles
https://github.com/hendrikmi/dotfiles
