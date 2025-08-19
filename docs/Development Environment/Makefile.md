Problem: When you write/edit file to a big project which is need to be compiled, each part of the project have it's own dependency, so you need to compile part by part
Solution: Automate this Process with MakeFile!
* Python is an interpreted language, so it doesn't need to get compile, so it doesn't need to have makefile, cause it will always run the last version of code for you
# Understanding Makefile Syntax
A Makefile consists of a set of _rules_. A rule generally looks like this:
```makefile
targets: prerequisites
	command
	command
	command
```

- The _targets_ are file names, separated by spaces. Typically, there is only one per rule.
- The _commands_ are a series of steps typically used to make the target(s). These _need to start with a tab character_, not spaces.
- The _prerequisites_ are also file names, separated by spaces. These files need to exist before the commands for the target are run. These are also called _dependencies_
# Is Python an Interpreted Language?
short answer: Yes! But why?
Behind-the-scene $\rightarrow$ source code is compiled into bytecode $\xrightarrow{\text{which}}$ they are similar to cpu instructions $\xrightarrow{\text{But}}$ They won't run on an actual CPU $\xrightarrow{\text{instead}}$ they get executed by a software called virtual machine (VM) which act as pseudo-microprocessor $\xrightarrow{\text{advantage}}$ You can run python on anything as long as you have VM installed 
* Python is Interpreted language because compilation is implicit (No need to invoke compiler manually).
**When this compiled files get created? where? what type?**
When you import module $\xrightarrow{\text{then}}$ Python compile them to bytecode $\xrightarrow{\text{where?}}$ in `__pycache__` $\xrightarrow{\text{which}}$ contain `.pyc` files
# Tips
* Make is a tool to Automate process such as cleaning, install, etc. When a file change, go build again!
* Make is event base (when something change go and build again)
* You can use Ansible, Python Script, Bash Script (make don't work on all spaces)
* Use make for Development not for Production
	* Don't install tools with make, Use Ansible for this use case (Server side)
# Alternatives
* [Task](https://github.com/go-task/task) - Written in Go
* [Just](https://just.systems/)
* [Poe The Poet](https://github.com/nat-n/poethepoet) - Work with UV & Poetry
* [SCons](https://scons.org/)
* [Snake Make](https://snakemake.github.io/)
* [PyInvoke](https://www.pyinvoke.org/)
* [Pynt](https://github.com/rags/pynt)

**Reference**:
* [Makefile tutorial](https://makefiletutorial.com/#makefile-cookbook)
* [Alternatives for Python - Reddit](https://www.reddit.com/r/Python/comments/10kvfat/alternatives_to_makefile_for_python/)
* [Creating Python Makefile - Earthly](https://earthly.dev/blog/python-makefile/)