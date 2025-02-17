# Setup

https://www.atlassian.com/git/tutorials/dotfiles
https://github.com/hendrikmi/dotfiles

```bash
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
echo "alias dot=dotfiles" >> $HOME/.zshrc

mkdir -p $HOME/.dotfiles
git clone --bare git@github.com:kevinallenbriggs/dotfiles.git $HOME/.dotfiles
cd $HOME
dotfiles checkout # Fedora
dotfiles checkout wsl # Windows/WSL
```

# Software

- git
- lazygit
- nvim
- zsh
- oh-my-zsh
- nvm / node
- docker
- openvpn
- remmina/rdp
- dotfiles
- jq
- repos
- wezterm/tmux/i3wm?
- shopify cli
- command-not-found
- glances
- 7z
- flameshot
- slack
- zoom
- tmux
- tpm
