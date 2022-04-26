#/usr/bin/env bash
# set -x
set -e

# requre 'install-all' arg
if [[ "$1" != "install-all" ]]; then
    echo "Usage install-deps.sh install-all"
    exit 1
fi

# require 'realpath tools.shtool'
_ME_PARENT=$(dirname $(readlink -f $0))

echo "@...@act=init flow=install-all@devpod at=$_ME_PARENT"
pushd $_ME_PARENT
    # install base tools
    bash setup.os.tools.sh install-all

    # install rest using task base tools
    task install-all -o prefixed
popd
echo "@...@act=over flow=install-all@devpod"
