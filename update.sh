#!/bin/bash


vim -c "PlugInstall" -c "q" -c "q"
vim -c "PlugUpdate" -c "q" -c "q"
vim -c "PlugUpgrade" -c "q" -c "q"
vim -c "PlugClean" -c "q" -c "q"
vim -c "GoInstallBinaries" -c "q" -c "q"
vim -c 'CocInstall -sync coc-snippets coc-json coc-go coc-tsserver coc-yaml coc-css coc-flutter coc-git coc-highlight coc-spell-checker coc-sql coc-eslint coc-vimlsp coc-html|q'
