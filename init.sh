#!/usr/bin/env sh
set -e
BASE_FILE_URL=https://raw.githubusercontent.com/yairdar/devpod/main/src/devpod
mkdir -p devpod && cd devpod      
xargs -P 4 -I{} wget $BASE_FILE_URL/{} -O {} << FHJ
Taskfile.yml
setup.all.sh
setup.os.tools.sh
setup.zsh.tools.yml
FHJ
