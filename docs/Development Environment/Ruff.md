Pretty Good! Have Linter + Formatter within it, it is pretty fast, it works with UV pretty well, it's document is pretty good
* It gets config within `pyproject.toml`
* Run Ruff Linter:
  `uv run ruff check .`
* Run Ruff Formatter:
  `uv run ruff format .`
* Ignore Error:
	* Line:
	  add this comment to the end of the line `# noqa: rule`
	* File:
	  add this comment to the header of the file `# ruff: noqa: rule`
* We can also combine ruff with it's own version of [[Pre-Commit]] hooks to get the best result
* For neovim install ruff-lsp via Mason

**Reference**:
* [Ruff Documentation](https://docs.astral.sh/ruff/)
* [Ruff Formmatter](https://docs.astral.sh/ruff/formatter/)
* [Ruff Linter](https://docs.astral.sh/ruff/linter/)