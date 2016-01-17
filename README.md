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
   $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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
   $ HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-playbook -i hosts -vv localhost.yml
   ```


## Manual additional settings

- Install Ricty in my dropbox folder
- Make symlinks to files in dropbox/home
- Copy scripts in dropbox/my_script to ~/bin
- Make ~/.gitconfig.local and describe git settings which is not made public
- Modify permissions of git hooks under ~/.git_template/hooks, if necessary

  ``` bash
  $ chmod 755 ~/.git_template/hooks/*
  ```

- Install [anaconda][2] under ~/opt/anaconda

  - Make sure that the following packages are installed:

    - numpy
    - scipy
    - matplotlib
    - pandas
    - sympy
    - cython
    - numba
    - jedi

  - Install the following packages through pip:

    - grip
    - epc

  - Install numdifftools through conda

    ``` bash
    $ conda install -c http://conda.anaconda.org/pbrod numdifftools
    ```

- Apply [solarized theme][3] to iTerm2

  Load solarized theme in `~/repos/solarized` through preferences setting in iTerm2

- Setup atom with `sync-settings`

  Access token and Gist id is in my Dropbox

## TODO

- [ ] Make sure that the above setting works
- [ ] Automate the manual setting as much as possible


[1]: http://brew.sh/
[2]: https://www.continuum.io/downloads
[3]: https://github.com/altercation/solarized
