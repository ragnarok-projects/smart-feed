* It is a powerful release management tool, which:
	* Enforce [Commit Conventions](https://www.conventionalcommits.org/en/v1.0.0/) so you write a clear and structure commit message $\xrightarrow{so}$ base on this commit messages you can do automatic semantic versioning $\xrightarrow{\text{result into}}$  streamlining release process
* It gets config within `pyproject.toml`
* Check commit text
	* Force you to follow the git convention
* Create Version Bump $\xrightarrow{\text{how?}}$ Read your commits and decide how to implement version Bump
	* Semantic Versioning
* config within `pyproject`
* Not useful in Big Projects
* [Commitizen Customize Documentation](https://commitizen-tools.github.io/commitizen/customization/)
	* name =
		* `cz_customize`, delete all the default configs
		* `cz_conventional`, default 
	* schema_pattern: how you must write your commit

> [!question] regex capture group

> [!important] check your regex through [regex101](https://regex101.com/)

**References**:
* [Commitizen Documentation](https://commitizen-tools.github.io/commitizen/)