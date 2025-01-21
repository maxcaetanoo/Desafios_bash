#!/usr/bin/env bash
# Objetivo: Crie um script que execute as seguintes ações:

err=0

# Crie uma pasta chamada projeto.
# Dentro de projeto, crie dois subdiretórios chamados src e bin.
mkdir -p projeto/src projetos/bin

# Em src, crie um arquivo de texto chamado codigo.py com o conteúdo "print(Desafio resolvido!)".
echo 'print("Desafio resolvido")' >projeto/src/codigo.py

# Tente rodar o código com python3 src/codigo.py, mas se o comando falhar (caso o Python não esteja instalado), exiba a mensagem "Python não encontrado" e redirecione o erro para um arquivo chamado erro_python.txt.
./projeto/src/codigo.py 2>projeto/erro_python.txt && echo "Python não encontrado" && err=1

# Caso o código rode corretamente, mova o arquivo codigo.py para o diretório bin e exiba uma mensagem "Código movido para bin" na tela.
[[ $err -eq 0 ]] && mv projeto/src/codigo.py projeto/bin/ && echo "Código movido para bin"

# No final, apague a pasta projeto (apenas se a pasta bin contiver o arquivo codigo.py).
[[ -f projeto/bin/codigo.py ]] && rm -rf projeto/
