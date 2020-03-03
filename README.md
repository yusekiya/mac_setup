# Setup of Mac

## Install Xcode

Install Xcode from app store.
An apple ID is necessary to download Xcode.
One needs to start Xcode once to accept a license agreement.


## Install command line tools

``` bash
$ xcode-select --install
```


## Install Homebrew

[Homebrew][1] is a package manager for Mac.

1. Install Homebrew with

   ``` bash
   $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
   ```

2. Check any issues with the install

   ``` bash
   $ brew doctor
   ```

## Setup with ansible

1. Install ansible

   ``` bash
   $ brew install ansible
   ```

2. Clone repository to setup Mac with ansible

   ``` bash
   $ git clone https://github.com/yusekiya/mac_setup.git ~/.provisioning
   $ cd ~/.provisioning
   $ ansible-playbook -vv localhost.yml
   ```


## Manual additional settings

- Install Ricty in my dropbox folder with Font Book
- Make symlinks to files in dropbox/home
- Install [anaconda][2] under ~/anaconda

    - Make sure that the following packages are installed:

        - numpy
        - scipy
        - matplotlib
        - pandas
        - sympy
        - cython
        - numba
        - jedi
        - numpydoc
        - pylint

    - Install the following packages through pip:

        - grip
        - epc

    - Install numdifftools through conda

      ``` bash
      $ conda install -c http://conda.anaconda.org/pbrod numdifftools
      ```

    - Install nbstripout through conda

      ``` bash
      $ conda install -c conda-forge nbstripout
      ```

- Setup environment for Jupyterlab

  ```bash
  $ conda install conda-forge::nodejs=9.9.* conda-forge::ipywidgets=7.2.* conda-forge::jupyterlab=0.32.*
  $ jupyter labextension install @jupyter-widgets/jupyterlab-manager jupyterlab_bokeh
  ```

- Setup environment for Node.js

    - Install Node.js

      ```bash
      $ nodebrew install-binary latest
      $ nodebrew use latest
      ```

      The `latest` can instead be a version of Node.js given through `nodebrew ls-remote`.

    - Install the following packages globally with `npm install -g <package_name>`

        - tern
        - electron
        - electron-packager


- Setup iTerm2

    - Apply iTerm2 theme

        - [solarized theme][3]

          Load solarized theme in `~/repos/solarized` through preferences setting in iTerm2

        - [Nord theme][5]

          See README in the repository.

    - Add shortcut key

      | Key Combination  | Action           |
      |------------------|------------------|
      | Ctrl-Tab         | Next Tab         |
      | Ctrl-Shift-Tab   | Previous Tab     |


    - Install shell integration (> ver3.0)

      `iTerm2 > Install Shell Integration`

    - Create profile for remote host

        - Open profile setting with `iTerm2 > Preference > Profiles`.
        - Create new profilw by duplicating Default profile with keyboard shortcut `command-=`.
        - Change profile name to "Remote" in General tab.
        - Change tab color in Colors tab.
        - Add rule for automatic profile switching in Advanced tab.


- Setup atom with `sync-settings`

  Access token and Gist id is in my Dropbox

- Install vscode

    - Install `Settings Sync`

      Access token and Gist id is in my Dropbox

    - Ran the `Shell Command: Install 'code' command in PATH`

- Setup TeX

  ```bash
  sudo tlmgr update --self --all
  ```

- Install Inkscape from [here][4].

## TODO

- [x] Make sure that the above setting works
- [ ] Automate the manual setting as much as possible


[1]: http://brew.sh/
[2]: https://www.continuum.io/downloads
[3]: https://github.com/altercation/solarized
[4]: https://github.com/caskformula/homebrew-caskformula
[5]: https://github.com/arcticicestudio/nord-iterm2
