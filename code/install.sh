#!/usr/bin/env bash

set -e

# Can be updated with:
# code --list-extensions
CODE_EXTENSIONS=(
  adamvoss.vscode-languagetool
  ban.spellright
  ccy.ayu-adaptive
  DavidAnson.vscode-markdownlint
  eg2.tslint
  esbenp.prettier-vscode
  Gimly81.matlab
  ginfuru.ginfuru-better-solarized-dark-theme
  James-Yu.latex-workshop
  ms-python.python
  nickfode.latex-formatter
  PKief.material-icon-theme
  redhat.java
  rubbersheep.gi
  shd101wyy.markdown-preview-enhanced
  streetsidesoftware.code-spell-checker
  teabyii.ayu
  vscodevim.vim
  yogipatel.solarized-light-no-bold
  yzhang.markdown-all-in-one
)

for ext in "$CODE_EXNTENSIONS"; do
  code --install-extension "$ext"
done
