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
  echo "manque le nom du bundle vim a restaurer"
  liste depot
  exit 1;
fi
if [ -e $dest/$1 ];then
  echo "la cible existe deja"
  exit 1;
fi
if [ -e $depot/$1 ];then
  mv $depot/$1 $dest
  if [ $? -eq 0 ];then
    echo "installation reussie"
    exit 0;
  fi
fi
echo "le bundle n'est peut etre pas disponible voici la liste des depots dispo : "
liste depot
exit 1;


