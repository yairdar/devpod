# Devpod: get your environment ready for development

Devpod makes it easy to prepare an environment for software development. It works the same way on cloud computing instances like AWS EC2, in Docker containers or on desktop machines.

## [Quick Install](https://github.com/yairdar/devpod/blob/main/README.md#quick-install)

By downloading the convenience script and running it, you can install a main Developer Toolset. It contains some basic utilities (`curl` `wget` `git` `vim` `zip` `unzip`), `task` (aka [Taskfile](https://taskfile.dev)), [yq](https://mikefarah.gitbook.io/yq) and [zsh](https://zsh.sourceforge.io/) with [oh my zsh](https://ohmyz.sh) extension framework.
Taskfile is the main automation tool in Devpod. It allows to run complex multistep tasks with convenient commands in task taskname form.
Taskfile uses YAML to describe the tasks, and it makes automation easy and intuitive. That's why Devpod itself relies on Taskfile.
Yq is a YAML processor that supports JSON as well. _(Note: it's hard for me to explain why any developer needs yq installed and why does it come in our main Toolset)_
Zsh is a powerful shell that supports plugins, has an advanced autocompletion, shorthands for most commonly used commands and vast customization capabilities. Oh my zsh framework helps managing zsh configuration and and adds even more conveniece.

This basic set can be easily extended with taskfiles. Four additional taskfiles are already included:
- [setup.os.cloud.tools.yml](../devpod/setup.cloud.tools.yml) is to setup Cloud Dev Toolset.
- [setup.os.conda.yml](../devpod/setup.os.conda.yaml) is to setup Conda.
- [setup.os.docker.yml](../devpod/setup.os.docker.yaml) is to setup Docker.
- [setup.os.flavor.yml](../devpod/setup.os.flavor.yml) is a customizable taskfile for Project Specific Toolsets.

---

## How to install Devpod to the Docker container

---

## How to install Devpod to the cloud node

--

## How to tune Devpod for your project

--

## How to contribute