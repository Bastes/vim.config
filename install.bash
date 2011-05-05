#!/usr/bin/env bash
git clone git@github.com:Bastes/vim.config.git ~/.vim &&\
ln ~/.vim/.vimrc ~/.vimrc && \
ln ~/.vim/.ackrc ~/.ackrc && \
cd ~/.vim && \
git submodule init && \
git submodule update
