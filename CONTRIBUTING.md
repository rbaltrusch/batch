# Contribution guidelines

First of all, thank you for considering to contribute to this repository! Any contributions are welcome and will be considered for merges to this repository.

Before submitting your contribution, there are a few things to review, which are detailed below:
- [Scope of the repository](https://github.com/rbaltrusch/batch/blob/master/CONTRIBUTING.md/#scope-of-the-repository)
- [Bugfixes and corrections](https://github.com/rbaltrusch/batch/blob/master/CONTRIBUTING.md/#bugfixes-and-corrections)
- [New content](https://github.com/rbaltrusch/batch/blob/master/CONTRIBUTING.md/#new-content)

After a timely review of a pull request by the maintainers of this repository, the pull request may be merged in to the master branch of this repository if it passes the review, otherwise appropriate review comments will be provided on the pull request. Once the review comments are addressed, the pull request may be merged in as normal.

## Scope of the repository

This repository aims to provide a basic overview of the Batch scripting language, both for traversing the command line and writing basic batchfiles. As a result, only the most used or useful aspects of Batch will be considered, as more extended Batch functionality often leads to more complex, cumbersome, difficult and error-prone code than if the same functionality had been written in a more modern shell or scripting language, such as Powershell or Python.

As a result, only relatively basic features of Batch scripting language are considered in the example batchfiles included in the repository, with scripts rarely longer than 20 lines. Similarly, the content discussed in the [wiki](https://github.com/rbaltrusch/batch/wiki) is not meant to be an exhaustive encyclopedia of the various features and caveats of the Batch language, but rather a collection of features that will be required in 90% of the typical Batch scripting workflow. The remaining 10% are and should not be covered here and are left up to the interested reader to seek out from other sources.

That being said, neat features of the Batch language that lead to more concise code (compared to other languages) do fit into the scope of this repository and any additions in this department are welcome.

Only modern operating systems (Windows 7 and newer) are considered in this repository and the example code or the wiki may not reflect features or behaviour of older operating systems. This should also be considered for all new pull requests.

## Bugfixes and corrections

Bugfixes to the showcased scripts should contain a clear description of the bug (when and why it occurs) and contain working code that addresses the described problem. If the bug was described in an [issue](https://github.com/rbaltrusch/batch/issues), please link the bugfix pull request to the corresponding issue in the title or description of the pull request.

## New content

New content, such as more documentation or code examples, is also very appreciated and welcome to this repository, as long as it stays within the [scope of the repository](https://github.com/rbaltrusch/batch/blob/master/CONTRIBUTING.md/#scope-of-the-repository). A clear description of the new content must be provided with the pull request, including information on what the new content includes and why it is a fitting addition to the repository.

### Code
Code must be working, clear, concise and commented.

### Wiki
Additional content for the wiki, including new pages, should be clear and concise, provide examples, and link to existing wiki pages where possible.

## Contact

For any question that remains unclear after reading these guidelines, please raise an [issue](https://github.com/rbaltrusch/batch/issues) describing the unclear or lacking content.
