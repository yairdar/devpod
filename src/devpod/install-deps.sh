#/usr/bin/env bash
# set -x
set -e

# requre 'install-all' arg
if [[ "$1" != "setup-base" ]]; then
    echo "Usage: install-deps.sh setup-base           will install deps, zsh and oh-my-zsh"
    echo "Usage: install-deps.sh setup-base [TASKNAME] will run [TASKNAME] after setup-base"
    exit 1
fi

# require 'realpath tools.shtool'
_ME_PARENT=$(dirname $(readlink -f $0))

echo "@...@act=init flow=install-all@devpod at=$_ME_PARENT"
pushd $_ME_PARENT
    # install base tools
    bash setup.os.tools.sh install-all

    task setup-zsh-tools -o prefixed

    if [[ "$2" != "" ]]; then
    shift
    task $@
    fi
    
popd
echo "@...@act=over flow=install-all@devpod"
