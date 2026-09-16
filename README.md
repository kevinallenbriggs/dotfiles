# Setup

```bash
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
echo "alias dot=dotfiles" >> $HOME/.zshrc

mkdir -p $HOME/.dotfiles
git clone --bare git@github.com:kevinallenbriggs/dotfiles.git $HOME/.dotfiles
dotfiles config --local status.showUntrackedFiles no
cd $HOME
dotfiles checkout # Fedora/Ubuntu
dotfiles checkout wsl # Windows/WSL

# TODO rework branches by linux distro or remote environment
```

# Software

- git
- (lazygit)[https://github.com/jesseduffield/lazygit]
- git repos
- (tmux)[https://github.com/tmux/tmux/wiki]
  - (tpm)[https://github.com/tmux-plugins/tpm]
- (nvim)[https://github.com/neovim/neovim/blob/master/INSTALL.md]
  - (lazy)[https://github.com/folke/lazy.nvim]
- (zsh)[https://ohmyz.sh/#install][https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH]
  - dotfiles
  - (oh-my-zsh)[https://ohmyz.sh/#install]
  - command-not-found
  - (starship)[https://starship.rs/guide/]
  - [zoxide](https://github.com/ajeetdsouza/zoxide) - `cd` replacement
  - [eza](https://github.com/eza-community/eza) - `ls` replacement
  - [bat](https://github.com/sharkdp/bat) - `cat` replacement
  - (fzf)[https://github.com/junegunn/fzf]
  - clipboard-cli (`npm install -g clipboard-cli`)
  - [yazi](https://github.com/sxyazi/yazi)
  - [sesh](https://github.com/joshmedeski/sesh)
- nvm / node
- docker
- (Mozilla VPN)[https://copr.fedorainfracloud.org/coprs/dannycolin/mozillavpn/]
- filezilla
- openvpn
- remmina/rdp
- jq
- (kitty)[https://sw.kovidgoyal.net/kitty/]
- shopify cli
- btop
- 7z
- flameshot
- slack
- zoom
- [onedrive client](https://github.com/abraunegg/onedrive)
- [ps-shopify-cli](https://bitbucket.org/psaudioengineering/shopify-admin-cli/src/main/)

# See Also

https://www.atlassian.com/git/tutorials/dotfiles
https://github.com/hendrikmi/dotfiles
