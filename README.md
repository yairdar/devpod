# Devpod

Developer Tools Setup for CLIs, Envs and Services with Taskfile.dev based automation

- Develop on [![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod)](https://gitpod.io/from-referrer/)
  - or via [direct link](https://www.gitpod.io/#https://github.com/yairdar/devpod)

## Quick Install

Quick Install runs [The Seqeunce](docs/the-sequence.md) that installs the main Developer Toolset

```shell
echo "Inititalize $(pwd) with devpod"
echo "This will create directory `devpod`, run this from your repo root so `devpod` became 1 level dir."
wget -q -O - https://raw.githubusercontent.com/yairdar/devpod/main/init.sh | bash

echo "run setup idempotent process, only missing tools will be installed"
bash devpod/install-deps.sh install-all
```

### What gets installed

- CLI utilities:
  - `curl` `wget` `git` `vim` `zip` `unzip`
  - `task` aka [Taskfile](https://taskfile.dev/)
  - `yq`
  - `zsh`

## Development

### Adding New Step

> Step is a task in Taskfile or block in bash.
> When adding a new step into install-all sequence cut
> it gets automatically incorporated in affected pipelines

### Adding New Group

> Group is a file with install-all sequence that installs a Toolset

When new group added to `src/devpod` dir it need to be registred by running
`task build` and creating a new web-installer in root `init.sh`

after push to master devpod can also update from github into root/devpod 
by either removing devod dir and running init script in this dir
or use `update-contex.sh` script

### Tasks

task stroke, | Desc, | Comments
-------------|-------|---------
`task build`, | "Updates init.sh initializer/updater", | 3
`task init-from-gitub-latest`, | "use external updater knowledge", | 3
`task update-context`, | "update using dir upstream ref", | 3

## Tests

- [Tests before push](tests/test-before-push/test-before-push.md)

## Roadmap

- [ ] Add py-pdm
- [ ] Add java
- [ ] Add closure
