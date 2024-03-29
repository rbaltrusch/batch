[![License: MIT](https://img.shields.io/badge/License-MIT-purple.svg)](https://opensource.org/licenses/MIT)

# Windows Batchfiles

This repository is a collection of Windows batchfiles, primarily to practice batchfile syntax and test the various batch functionality available.

The targeted audience of this repository primarily is developers just getting started writing batchfiles. For developers only needing to accomplish simple tasks in the command line window, the [common workflow wiki page](https://github.com/rbaltrusch/batch/wiki/Common-workflow) should be enough to get started.

## Contents

This repository contains files that test out:

- most in-built batchfile commands
- [variables](https://github.com/rbaltrusch/batch/wiki/Variables)
- [function definitions](https://github.com/rbaltrusch/batch/wiki/Functions)
	- with local and global scopes
- loops
	- [for loops](https://github.com/rbaltrusch/batch/wiki/For-loop)
	- while loops
- [conditional logic](https://github.com/rbaltrusch/batch/wiki/Conditionals)
- various other functionality, e.g.
	- user input
	- string manipulation
	- [redirection (piping)](https://github.com/rbaltrusch/batch/wiki/Redirection)

A more detailed description of most concepts touched on here can be found in the [wiki](https://github.com/rbaltrusch/batch/wiki).

#### In-built Commands

1) batch_training.bat
	- Showcases a number of common built-in batchfile commands, such as *echo*, *cd*, *dir* and *md*. Note that this file is not meant to be run and only is a batch file to contain proper syntax highlighting. It exits early in case it is run.

#### Functions
1) function.bat
	- Showcases functions with local and global scope.
1) function2.bat
	- Showcases a function with mixed scope.
1) function3.bat
	- Showcases a function with local scope and a return value passed back to global scope, using the syntax:

```batch
	setlocal
	set /a var_from_local_scope=1
	endlocal & set var=%var_from_local_scope%
```
        
#### Loops
1) for_test.bat
	- Showcases the *for* keyword, with its various switches ( /l, /d, /r, /f ).
1) for_with_label.bat
	- Showcases a for loop using *goto* labels.
1) while_test.bat
	- Showcases a while loop using *goto* labels.
        
#### Other

This section contains various other scripts, including conditional statements, user input, **file redirection (piping)**, and other functionality.

1) choice_test.bat
1) conditionals.bat
1) delayedexpansion.bat
1) delayedexpansion_without_setlocal.bat
1) input_test.bat
1) random_number.bat
1) redirection.bat
1) script_with_args.bat
1) string_substitution.bat
1) substring.bat

## Getting started

To get a copy of this repository, simply open up git bash in an empty folder and use the command:

		$ git clone https://github.com/rbaltrusch/batch

## Contributions

Any contributions, such as additional features, bugfixes, or documentation are much appreciated. Contribution guidelines are specified in [CONTRIBUTING.md](https://github.com/rbaltrusch/batch/blob/master/CONTRIBUTING.md).

## License

This repository is open-source software available under the [MIT license](https://github.com/rbaltrusch/batch/blob/master/LICENSE)

## Contact

Please raise an issue for code changes. To reach out, please send an email to richard@baltrusch.net.
