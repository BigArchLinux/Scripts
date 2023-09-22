#!/bin/bash

echo "Limpar e Remover"
sudo apt autoremove && sudo apt autoclean && sudo apt clean

echo "Limpar pastas recentes"
echo | tee $HOME/.local/share/recently-used*

echo "Espaço que os arquivos de pacotes .deb estão ocupando"
sudo du -sh /var/cache/apt/archives

echo 'Limpeza realizada com sucesso!';

exit
