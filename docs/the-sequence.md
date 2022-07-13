The Sequence contains the main steps of the devpod environment setup
Those steps should be run through anyway
Current issues are marked with *italic*

1. install-deps.sh
2. setup.os.tools.sh
   1. curl wget git vim zip unzip *deps: sudo*
   2. taskfile.dev
   3. yq
3. task install-all
   1. install-all-tasks
      1. install-base-tools -> 2. setup.os.tools.sh
      2. install mid tools
         1. setup.zsh.tools.yml
            1. install-zsh-base
            2. config-zsh
            3. install-task-completion *deps: python*
      3. install-prj-tools *throws an error even if ok*