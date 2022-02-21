#!/usr/bin/env sh
set -e
mkdir -p devpod && cd devpod      
BASE_FILE_URL=https://raw.githubusercontent.com/yairdar/devpod/main/src/devpod
xargs -P 4 -I{} wget $BASE_FILE_URL/{} -O {} << FHJ
Taskfile.yml
setup.all.sh
setup.os.tools.sh
setup.zsh.tools.yml
FHJ
