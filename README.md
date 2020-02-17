# docker-compose-project

**A template for docker-compose projects.**

## Content: (Templates and scripts)

- [scripts](scripts) (convenient scripts for frequently used, necessary commands)
- [.editorconfig](https://editorconfig.org/) `*`
- [.gitignore](https://help.github.com/en/github/using-git/ignoring-files) `*`
- [.pre-commit-config.yaml](https://pre-commit.com/) (`pre-commit install`) `*`
- [.travis.yml](https://docs.travis-ci.com/) (`travis lint .travis.yml`) `**`
- [Dockerfile](https://docs.docker.com/engine/reference/builder/) `**`
- [LICENSE](https://choosealicense.com/) (MIT) `*`
- [Makefile](https://opensource.com/article/18/8/what-how-makefile) (for commands: `make`, `make clean`, etc.) `*`
- [README.md](https://help.github.com/en/github/writing-on-github/basic-writing-and-formatting-syntax) `**`
- [docker-compose.yml](https://docs.docker.com/compose/compose-file/) `**`
- [env.example](https://docs.docker.com/compose/compose-file/#env_file) `**`

_`*` Can be used out-of-the-box or change as needed for your project._

_`**` Requires changing to suit your project's need._

## How to use

- Fork and select this as template when creating a new repo on Github
- Or click on `Use this template` on this [repo](https://github.com/abmruman/docker-compose-project) and create a new repo on Github
- Or clone/download and use locally
- Modify `docker-compose.yml`
- Modify `Dockerfile`
- Modify `env.example`
- Run `make` and you are good to go!
- Run `make up` to start containers
- Run `make down` to stop/remove containers
- Run `make clean` to clean up and start fresh
- Or use the [scripts](scripts) directly. _i.e._ [`./scripts/init.sh`](scripts/init.sh), [`./scripts/build.sh`](scripts/init.sh)

_Refer to [`Makefile`](Makefile) to see the recipes._
