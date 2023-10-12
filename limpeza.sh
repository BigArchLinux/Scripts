#!/bin/bash

# Limpar cache de pacotes
sudo pacman -Sc --noconfirm && sudo pacman -Scc --noconfirm && sudo pamac clean --no-confirm

# Limpar pastas recentes
echo | tee $HOME/.local/share/recently-used*

# Limpar o cache do usuário
rm -rf ~/.cache
rm -rf ~/cache
rm -rf /cache

echo "Limpeza concluída."
