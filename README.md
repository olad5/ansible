# install dotfiles and neovim

    ansible-playbook -t dotfiles -t neovim local.yml --ask-vault-pass

# install productivity tools

    ansible-playbook -t productivity local.yml

# install node

    ansible-playbook -t node local.yml

# install brave

    ansible-playbook -t brave local.yml
