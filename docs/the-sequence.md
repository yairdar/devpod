# The Sequence

> installs the main Developer Toolset

Devpod works through those steps every time when it's running.
All the steps are idempotent, so it doesn't perform any changes if the component in question is already installed.

- **install-deps.sh**
- **setup.os.tools.sh**
  - curl wget git vim zip unzip
  - taskfile.dev
  - yq
- task install-all (uses **Taskfile.yml**)
  - install-all-tasks
    - setup-base-tools (-> setup.os.tools.sh)
      - install mid tools
        - **setup.zsh.tools.yml**
          - install-zsh-base
          - config-zsh
          - install-task-completion
      - install-prj-tools

## What gets installed

- CLI utilities:
  - curl
  - wget
  - git
  - vim
  - zip
  - unzip
- Taskfile.dev
- yq
- zsh

The Sequence uses 4 files from the [devpod](../devpod) folder (marked **bold** in the list above):

- [install-deps.sh](../devpod/install-deps.sh)
- [setup.os.tools.sh](../devpod/setup.os.tools.sh)
- [Taskfile.yml](../devpod/Taskfile.yml)
- [setup.zsh.tools.yml](../devpod/setup.zsh.tools.yml)
