#!/bin/bash
#
# 日本語help install
#

set -e
#set -x

#####設定
project_name=vimdoc-ja
project_type=start
repository_url=https://github.com/vim-jp/vimdoc-ja.git
git_clone_option=--depth=1
#####

cd "$(dirname ${BASH_SOURCE[0]})"

target_path="../pack/$project_name/$project_type/$project_name"

#plugin directoryが既にある場合削除
if [[ -d "../pack/$project_name" ]] ;
then
    rm -r -d -f "../pack/$project_name"
    echo "$project_name" directory is remove
fi

#plugin directory作成
mkdir -p "$target_path"

git clone "$git_clone_option" "$repository_url" "$target_path"
echo create "$project_name" directory

echo success!!!

