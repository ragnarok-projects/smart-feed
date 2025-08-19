# Module
A module is a simple python file that contains collections of functions and global variables + `.py` file extension
A single file or collection of files that encapsulate related code, smallest piece of software, collection of methods that are ready to be reused somewhere else, generally used to organize code into manageable, reusable pieces, into files, or a collection of files, promoting modularity and separation of concerns.

# Package
Collection of related modules within a directory + `__init__.py` file which interpreter think of it as package
* Container of modules

# Library/Distributions
* We don't have libraries in python, we have Distributions
	* wheel (`.whl`) files
Collection of related functionalities (packages), that allow you do a complex task without writing the whole code yourself and just do it by calling a function/method, allow you to write code efficiently without worrying too much about writing your own code
* Two type of libraries:
	* Single file modules, create a shallow namespace:
	  `import module`
	  `module.function()`
	* Folder structured package that can create an arbitrarily deep nested namespace out of multiple modules:
	  `from package.module import function`

# Framework
Collection of libraries for developing a specific type of applications
define the overall structure and flow of your application, make develop a complex system easier
Same as library but provide a architecture, design pattern, basic flow of how you will develop your program

**References:**
* [Module, Package, Library - GeeksForGeeks](https://www.geeksforgeeks.org/python/what-is-the-difference-between-pythons-module-package-and-library/)
* [Module, Package, Library, Framework - DEV](https://dev.to/thectogeneral/library-vs-framework-vs-package-vs-module-21j4)
* [Python Module, Package, Library - Reddit](https://www.reddit.com/r/Python/comments/weycrc/what_is_the_difference_between_a_library_and_a/)
* [Packages - Python Documentation](https://docs.python.org/3/tutorial/modules.html#packages)
* [Module, Package, Library, Framework - Medium](https://medium.com/@gennohjor/the-difference-between-module-package-library-and-framework-5113e3c11257)