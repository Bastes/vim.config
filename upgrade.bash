#!/usr/bin/env bash
cd ~/.vim && \
git pull origin master && \
git submodule init && \
git submodule update

