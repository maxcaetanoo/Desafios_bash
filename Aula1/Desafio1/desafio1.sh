#!/usr/bin/env bash
# Desafio 1: Navegação e Manipulação de Arquivos

# Crie um diretório chamado desafio_1.
# Dentro desse diretório, crie um arquivo chamado documento.txt com o conteúdo "Este é um desafio complexo.
mkdir -p $HOME/desafio_1 | echo "Este é um desafio complexo." >documento.txt

# Navegue para o diretório desafio_1 e adicione a frase "Desafio concluído" no final do arquivo documento.txt.
cd $HOME/desafio_1 | echo "Desafio concluído" >>documento.txt

# Depois, mova o arquivo documento.txt para um novo diretório chamado concluidos.
# Apague o diretório desafio_1, mas apenas se o diretório concluidos já existir.
mkdir -p $HOME/concluidos | mv $HOME/desafio_1/documento.txt $HOME/concluidos/ && rm -rf $HOME/desafio_1
