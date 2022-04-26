#/usr/bin/env bash
# set -x
set -e

# ###--- os minimal dev pack ---

# _def_minimal_os_took_pack_list__for_dev=""
MISSING=
for _it in curl wget git vim zip unzip
do
    if [ -f $(which $_it || echo _none_) ]; then
        echo "$_it is upto date"
    else
        MISSING="$MISSING $_it"
        echo "new MISSING=$MISSING"
    fi
done

if [ "$(echo $MISSING)" != "" ]; then
    sudo apt install -y $MISSING
fi

# ###--- install taskfile ---
if [ -f $(which task  || echo _none_ ) ]; then
    echo "os.pack.tool.task.is.present"
else
    echo "Install task exe from web installer of taskfile.dev"
    sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d \
        && sudo mv ./bin/task /usr/local/bin/task \
        && rm -rf ./bin \
        && echo "taskfile installed into: /usr/local/bin/task"
fi

# ###--- install yq4 ---
# md
# ```sh
if [ -f $(which yq || echo _none_ ) ]; then
    echo "os.pack.tool.yq4.is.present"
else
    echo "Install yq from github release"
    wget https://github.com/mikefarah/yq/releases/download/v4.16.1/yq_linux_amd64 \
        && chmod +x yq_linux_amd64 \
        && sudo mv yq_linux_amd64 /usr/local/bin/yq \
        && echo "yq4 installed into: /usr/local/bin/yq"
fi
# ```
# /md