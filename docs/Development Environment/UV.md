# Initialize UV
```bash
uv init name_of_project
```
or
```bash
mkdir name_of_project
cd name_of_project
uv init
```
* uv init, initialize an app structure for your code by default: `uv init name = uv init name --app`
after the first run, your virtual environment and `uv.lock` file will get add to your project
```bash
uv run
uv sync
uv lock
```
To see the structure of the created version and all the hidden files:
```bash
tree -L 2 -a
```
## .python-version
The .python-version file contains the project's default Python version. This file tells uv which Python version to use when creating the project's virtual environment.
# UV as build-backend
* It is pretty good, but it only works with pure python

**Reference:**
* [UV - Documents](https://docs.astral.sh/uv/getting-started/features/)*
