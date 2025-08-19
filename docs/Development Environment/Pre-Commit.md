**What is pre-commit?**
It is a multi-language package manager for pre-commit hooks.
**How it works?**
You specify a list of git-hooks[^1] you want and pre-commit manages the installation and execution of any hook written in any language before every commit.
**Do you need root access for pre-commit to run?**
pre-commit is specifically designed to not require root access. If one of your developers doesn’t have node installed but modifies a JavaScript file, pre-commit automatically handles downloading and building node to run eslint without root.
* We using pre-commit config of [ruff repo config](https://github.com/astral-sh/ruff-pre-commit)
* config within pre-commit-config.yaml

[^1]: Scripts that get run before every commit, more information [[Git-Hooks]]
**References:**
* [Pre-Commit](https://pre-commit.com/)
* [Ruff Pre-Commit](https://docs.astral.sh/ruff/integrations/#pre-commit)