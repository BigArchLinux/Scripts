#!/bin/bash

# O script precisa ser rodado como root

echo "Atualizar Sistema"
sudo pacman -Syu --noconfirm

echo "Limpar cache de pacotes"
sudo pacman -Rsn $(pacman -Qdtq) --noconfirm 2>/dev/null; pacman -Scc --noconfirm

echo "Limpar pastas recentes"
echo | tee $HOME/.local/share/recently-used*

echo 'Limpeza realizada com sucesso!';

exit
