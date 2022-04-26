# devpod
Developer Tools Setups for Clis, Envs and Services

- Develop on [![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod)](https://gitpod.io/from-referrer/)
  - or via [direct link](https://www.gitpod.io/#https://github.com/yairdar/devpod)

Provides Taskfile.dev based automation process


## Quick Install

```shell
echo "Inititalize $(pwd) with devpod"
echo "This will create directory `gitpod`, run this from your repo root so `gitpod` became 1 level dir."
curl -L https://raw.githubusercontent.com/yairdar/devpod/main/init.sh | bash

echo "run setup idepodent process, only missing tools will be installed"
bash devpod/install-deps.sh install-all
```

## Development

### Adding New Step

> Step is a task in taskfile or block in bash
> When adding new step into install-all sequence cut
> it automaticly incorporated in affected pipelines

### Adding New Group

> group is a file with install-all sequence that install some toolset

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


## Roadmap

- [ ] Add py-pdm
- [ ] Add java
- [ ] Add closure
