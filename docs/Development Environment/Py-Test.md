* library for unit-testing in python
* `addopts = -ra -q --cov=src`, what option should run by default on every PyTest command
	* `-ra` give output
	* `-q` quite mode, if there is no bug, don't log
	* `--cov=src`, run coverage plugin, and tell where should it watch (src directory)
* `testpaths` tell where is your test files
* python_files, regex of how you name your test files
* python_classes, what is the pattern of your test class
* python_function, what is the pattern of your test function

**References:**
* [MyPy](https://github.com/python/mypy)