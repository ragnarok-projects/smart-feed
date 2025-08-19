> [!important] [[Module vs. Package vs. Library vs. Framework]]
# [[build-backend]]:
Setuptools

* Write modular project
* It is build backend
* No need to have requirement.txt (use-case is for virtual environment, not related to the project)
* package your own code, and install it with pip (user interface) and move it to side package 
* `-e`(edit mode) use symlink of your code

# [[build-frontend]]:
pip

**References**:
* [Pyproject.toml - packaging python](https://packaging.python.org/en/latest/)
* [Modul Documentation - Python doc](https://docs.python.org/3/tutorial/modules.html#packages)
* [build documentation](https://build.pypa.io/en/stable/)
* [PEP 517 – A build-system independent format for source trees](https://peps.python.org/pep-0517/#terminology-and-goals)
* [import package vs distribution package - Packaging Python](https://packaging.python.org/en/latest/discussions/distribution-package-vs-import-package/#distribution-package-vs-import-package)
* [Python Egg - Peak](https://peak.telecommunity.com/DevCenter/PythonEggs)
* [UV build-backend - UV documentation](https://docs.astral.sh/uv/concepts/build-backend/)
* [UV project packaging - UV documentation](https://docs.astral.sh/uv/concepts/projects/config/#project-packaging)
* [build system - UV documentation](https://docs.astral.sh/uv/concepts/projects/config/#plugin-entry-points)
* [build meta - setuptoold](https://setuptools.pypa.io/en/latest/build_meta.html)
* [setuptools](https://setuptools.pypa.io/en/latest/setuptools.html)
* [setuptools user guide](https://setuptools.pypa.io/en/latest/userguide/)