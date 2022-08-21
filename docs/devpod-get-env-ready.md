# Devpod: get your environment ready for development

Devpod makes it easy to prepare an environment for software development.  
It works the same way on cloud computing instances like AWS EC2, in Docker  
containers or on desktop machines.

## [Quick Install](https://github.com/yairdar/devpod/blob/main/README.md#quick-install)

There are two ways to Quick Install the Devpod: **Setup Base** and **Setup Base
 and Custom Parts**

## Setup Base

To install the base toolset first and the rest later, do this:

```
echo "download and run the $pwd init script"
wget -q -O - https://raw.githubusercontent.com/yairdar/devpod/main/init.sh | bash

echo "run idempotent setup process, only missing tools will be installed"
bash devpod/install-deps.sh setup-base
```

Following the Quick Install procedure you can install a minimal Developer Toolset.

It contains some basic utilities (`curl` `wget` `git` `vim`  `zip` `unzip`), `task` 
(aka [Tasker](https://taskfile.dev)),  
[yq](https://mikefarah.gitbook.io/yq) and [zsh](https://zsh.sourceforge.io/)
with [oh my zsh](https://ohmyz.sh) extension framework 
and task autocompletions.  
**Tasker** is the main automation tool in Devpod. It allows to run complex  
multistep tasks with convenient commands in task taskname form.  
Tasker uses YAML to describe the tasks, and it makes automation easy and intuitive.  
That's why Devpod itself relies on Taskfile.  
**Yq** is a YAML processor that supports JSON as well.  
_(Note: it's hard for me to explain why any developer needs yq installed and why_  
_does it come in our main Toolset)_  
**Zsh** is a powerful shell that supports plugins, has an advanced autocompletion,  
shorthands for most commonly used commands and vast customization capabilities.  
**Oh my zsh** framework helps managing zsh configuration and and adds even more conveniece.  
Task autocompletion for zsh allow to autocomplete task names after `task` command.

In addition to this basic set you can install Custom Devops Parts that you need  
with following commands:

- Cloud Tools (GitHub CLI, AWS CLI)
  - `task setup-cloud-tools`
- Conda
  - `task setup-os-conda`
- Docker
  - `task setup-os-docker`

```
echo "install custom devpod parts"
cd devpod
task  -p -o prefixed setup-cloud-tools setup-os-conda setup-os-docker  
# drop -p to disable parallelism
```

## Setup Base and Custom Parts

If you want to install any of Custom Parts right from the start, you can add  
arguments to the Quick Install Command like this:

```
echo "download and run the $pwd init script"
wget -q -O - https://raw.githubusercontent.com/yairdar/devpod/main/init.sh | bash

echo "run idempotent setup process, only missing tools will be installed"
bash devpod/install-deps.sh setup-base setup-cloud-tools setup-os-docker
```

Arguments to choose from:

- Cloud Tools (GitHub CLI, AWS CLI)
  - `setup-cloud-tools`
- Conda
  - `setup-os-conda`
- Docker
  - `setup-os-docker`

## How to install Devpod to the Docker container

If you include Devpod to the Dockerfile, it's pretty straightforward:

```
RUN bash devpod/install-deps.sh setup-base <SETUP_CUSTOM_PARTS>
```

where `<SETUP_CUSTOM_PARTS>` can include `setup-cloud-tools`, `setup-os-conda`  
and `setup-os-docker`.

You can see the example [here](../tests/test-before-push/Dockerfile_no_python).
_(update this line after merge)_

The only consideration could be if you need task comlpetion for zsh in your  
Docker container or not. If you do and your container doesn't include `python3`  
you should setup it manually:

open your `~/.zshrc` file and add task to plugins list:

```
plugins=(git task)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh
```

In most cases this feature is not that useful in Docker containers.

## How to install Devpod to the cloud node

--

## How to tune Devpod for your project

--

## How to contribute