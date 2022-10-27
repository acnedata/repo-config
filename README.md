# Introduction

This repository holds the files neccessary to configure a repository for Python
devlopment in the ACNE Data team.

## Installation

To add these configuration files to an existing repository with the option to keep them
in sync with these template settings we make use of [Git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules).


## Updating

To update the repository with changes from this template repo, we have to run the
following command from the projects root (ideally from a clean working tree):

```
cd repo-config && git pull && cd .. && git commit -am "pulled repo-config updates"
```
