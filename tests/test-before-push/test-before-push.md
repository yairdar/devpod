# Tests before push

## A set of usecase tests

Those tests run on files in [../src](../src) folder. They should be run on development stage to ensure that the main usecases work as expected.

 Usecase tests require Taskfile.dev and Docker installed. Each test will build a Docker container and run [The Seqeunce](docs/the-sequence.md) inside it.

1. `test-ubuntu-docker-build-simple` will test Devpod in a minimal Ubuntu Linux docker container environment without python3. In this case zsh task completion will not be installed, and no errors or Sequence interruptions should occur.
2. `test-ubuntu-docker-build-with-python` will test Devpod in a minimal Ubuntu Linux docker container environment, but this time with python3 installed. In this case zsh task completion will be installed, and no errors or Sequence interruptions should occur.

