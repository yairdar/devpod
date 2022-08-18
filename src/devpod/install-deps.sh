#/usr/bin/env bash
# set -x
set -e

# requre 'install-all' arg
if [[ ("$1" != "install-all") && ("$1" != "install-min") ]]; then
    echo "Usage: install-deps.sh install-all            will install all tools"
    echo "Usage: install-deps.sh install-min            will install deps, zsh and oh-my-zsh"
    exit 1
fi

# require 'realpath tools.shtool'
_ME_PARENT=$(dirname $(readlink -f $0))

echo "@...@act=init flow=install-all@devpod at=$_ME_PARENT"
pushd $_ME_PARENT
    # install base tools
    bash setup.os.tools.sh install-all

    # install rest using task base tools
    if [[ "$1" = "install-all" ]]; then
        task install-all -o prefixed    
    fi

    # install zsh, oh-my-zsh and task completions for zsh only
    if [[ "$1" = "install-min" ]]; then
        task -t setup.zsh.tools.yml install-all -o prefixed
    fi
    
popd
echo "@...@act=over flow=install-all@devpod"
