#!/usr/bin/env sh

get_one_it () {
  echo  rm -f $1
  echo  wget https://raw.githubusercontent.com/yairdar/devpod/main/devpod/$1
  echo  "done $1"
}
export -f get_one_it   
      
mkdir -p devpod
pushd devpod

xargs -P 4 -I{} bash -c 'get_one_it {}' << FHJ
Taskfile.yml
setup.all.sh
setup.os.tools.sh
setup.zsh.tools.yml
FHJ
