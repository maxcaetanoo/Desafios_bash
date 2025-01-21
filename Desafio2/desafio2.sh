#!/usr/bin/env bash
# Objetivo: Você tem um arquivo de log chamado log.txt, e precisa realizar as seguintes tarefas:

# Se o arquivo log.txt não existir, exiba a mensagem "Arquivo não encontrado" e redirecione essa mensagem de erro para o arquivo erros.txt.
cat $HOME/log.txt | grep "error" 2>erros.txt && echo "Arquivo não encontrado"

# Exiba no terminal as linhas que contêm a palavra "erro".
# Salve essas linhas em um novo arquivo chamado erros.txt.
[ -f $HOME/log.txt ] && cat $HOME/log.txt | grep "error" | tee erros.txt

# Adicione no final de erros.txt as linhas que contêm a palavra "aviso".
[ -f $HOME/log.txt ] && cat $HOME/log.txt | grep "warning" >>erros.txt
