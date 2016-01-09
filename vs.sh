#!/usr/bin/env bash
depot=~/vim_sauv
dest=~/.vim/bundle
function liste {
case $1 in
  depot)
    ls -1 $depot
    ;;
  dest)
    ls -1 $dest
    ;;
esac
}
if [ $# -ne 1 ];then
  echo "manque le nom du bundle vim a sauvegarder"
  liste dest
  exit 1;
fi
if [ -e $depot/$1 ];then
  echo "la cible existe deja dans le depot"
  exit 1;
fi
if [ -e $dest/$1 ];then
  mv $dest/$1 $depot
  if [ $? -eq 0 ];then
    echo "sauvegarde reussie"
    exit 0;
  fi
fi
echo "le bundle n'est peut etre pas disponible voici la liste des destinations dispo : "
liste dest
exit 1;
