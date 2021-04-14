#!/bin/bash
#
# .vim directory(symbolic link)作成
#

set -e
#set -x

script_dir="$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)"
vim_dir_name=.vim
suffix=.bak

cd ~

#.vim directoryのsymbolic link作成
if [[ -d ~/$vim_dir_name ]] || [[ -h ~/$vim_dir_name ]] ;
then
  echo already .vim directory
  echo end
  exit 0
fi

ln -s "$(dirname $script_dir)"
mv vim "$vim_dir_name"
echo create "$vim_dir_name" symbolic link

#.vimrcが存在する場合rename
if [[ -e .vimrc ]] ;
then
  mv .vimrc .vimrc"$suffix"
  echo rename .vimrc
fi

echo success!!!

