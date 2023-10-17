#!/bin/bash

# Limpar o cache do pacman
sudo pacman -Sc --noconfirm && sudo pacman -Scc --noconfirm && sudo pamac clean --no-confirm

# Limpar pacotes antigos
sudo paccache -r

# Limpar pastas recentes
echo | tee $HOME/.local/share/recently-used*

# Limpar o cache do usuário
rm -rf ~/.cache*

echo "Limpeza concluída com sucesso."
