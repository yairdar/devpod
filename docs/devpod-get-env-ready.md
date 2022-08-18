# Devpod: get your environment ready for development

Devpod makes it easy to prepare an environment for software development.  
It works the same way on cloud computing instances like AWS EC2, in Docker  
containers or on desktop machines.

## [Quick Install](https://github.com/yairdar/devpod/blob/main/README.md#quick-install)

Following the Quick Install procedure you can install a minimal Developer Toolset.

It contains some basic utilities (`curl` `wget` `git` `vim`  `zip` `unzip`), `task`  
(aka [Taskfile.dev](https://taskfile.dev)),
[yq](https://mikefarah.gitbook.io/yq) and [zsh](https://zsh.sourceforge.io/)
with [oh my zsh](https://ohmyz.sh) extension framework  
and task autocompletions.  
Taskfile is the main automation tool in Devpod. It allows to run complex  
multistep tasks with convenient commands in task taskname form.  
Taskfile uses YAML to describe the tasks, and it makes automation easy and intuitive.  
That's why Devpod itself relies on Taskfile.  
Yq is a YAML processor that supports JSON as well.  
_(Note: it's hard for me to explain why any developer needs yq installed and why_  
_does it come in our main Toolset)_  
Zsh is a powerful shell that supports plugins, has an advanced autocompletion,  
shorthands for most commonly used commands and vast customization capabilities.  
Oh my zsh framework helps managing zsh configuration and and adds even more conveniece.  
Task autocompletion for zsh allow to autocomplete task names after `task` command.

In addition to this basic set you can install Custom Devops Parts that you need:

- Cloud Tools (GitHub CLI, AWS CLI)
  - task setup-cloud-tools
- Conda
  - task setup-os-conda
- Docker
  - setup-os-docker

--

## How to install Devpod to the Docker container

--

## How to install Devpod to the cloud node

--

## How to tune Devpod for your project

--

## How to contribute