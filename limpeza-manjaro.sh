#!/bin/bash

echo "Limpar cache de pacotes"
sudo pacman -Sc --noconfirm && sudo pacman -Scc --noconfirm

echo "Limpar pastas recentes"
echo | tee $HOME/.local/share/recently-used*

echo 'Limpeza realizada com sucesso!';

exit
