#!/bin/bash
# Use only if you need to perform changes on the user system such as installing software
which todo-txt >/dev/null && return

if dialog_yesno "todotxt-cli ist nicht installiert, wollen sie es installieren?" true >/dev/null; then
  sudo apt-get update \
  && sudo apt-get install -y todotxt-cli \
  && return \
  || dialog_msg "Die Installation auf normalem Wege funktiornierte nicht. Das Plugin installiert, wird aber ohne todotxt-cli warscheinlich nicht voll funktionsfähig sein. Gehen sie zu http://todotxt.com/ um es zu installieren."
else
  dialog_msg "Die Installation wird fortgesetzt, aber einige Funktionen werden ohne todotxt-cli nicht funktionieren. Besuchen Sie http://todotxt.com/ tum es zu installieren"
fi
