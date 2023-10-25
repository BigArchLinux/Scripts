#!/bin/bash

# Limpeza de cache e pacotes não utilizados
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove

# Limpeza de diretórios temporários
sudo rm -rf /tmp/*
sudo rm -rf /var/tmp/*

# Limpeza de caches de aplicativos específicos (você pode adicionar mais conforme necessário)
sudo rm -rf ~/.cache/thumbnails/* # Cache de miniaturas
sudo rm -rf ~/.cache/mozilla/firefox/* # Cache do Firefox
sudo rm -rf ~/.cache/google-chrome/* # Cache do Google Chrome
sudo rm -rf ~/.cache/BraveSoftware/* # Cache do brave

# Limpeza de logs antigos
sudo find /var/log -type f -name "*.log" -exec truncate -s 0 {} \;

# Limpeza do lixo do usuário
rm -rf ~/.local/share/Trash/*
rm -rf ~/.thumbnails/*

# Limpar Pastas Recentes
echo | tee $HOME/.local/share/recently-used*

# Limpeza de Rhythmbox
echo "Limpando Rhythmbox..."
rm -rf ~/.local/share/rhythmbox/

# Limpeza de VLC
echo "Limpando VLC..."
rm -rf ~/.cache/vlc/

# Limpeza de GNOME
echo "Limpando Gnome..."
rm -rf ~/.cache/gnome/

# Limpeza do journald
echo "Limpando journald..."
sudo journalctl --vacuum-time=3d

# Limpeza de Evolution
echo "Limpando Evolution..."
rm -rf ~/.local/share/evolution/mail

# Limpeza de histórico de comandos do terminal
cat /dev/null > ~/.bash_history && history -c && exit

# Informar que a limpeza foi concluída
echo "Limpeza concluída com sucesso!"
