#!/bin/bash

# Atualizar a lista de pacotes
sudo apt-get update

# Limpar pacotes desnecessários sem remover dependências
sudo apt-get --purge autoremove

# Limpar o cache de pacotes
sudo apt-get clean

# Limpar cache de pacotes obsoletos
sudo apt-get autoclean

# Limpar Pastas Recentes
echo | tee $HOME/.local/share/recently-used*

# Limpar o cache do usuário
rm -rf ~/.cache*

echo "Limpeza concluída com sucesso."
