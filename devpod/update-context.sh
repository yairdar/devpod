#/usr/bin/env bash
# require 'realpath tools.shtool'
_ME_PARENT=$(dirname $(readlink -f $0))

# install/update devpod dir
export DEVPOD_INIT_DIR="$_ME_PARENT"
curl -L \
    "https://raw.githubusercontent.com/yairdar/devpod/main/init.sh" \
| bash
