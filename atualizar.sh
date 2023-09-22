#!/bin/bash

echo "Atualizar Sistema"
sudo apt update && sudo apt upgrade -y && sudo apt install -f

echo 'Atualização realizada com sucesso!';

exit
