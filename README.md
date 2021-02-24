# Setup of Mac

## (Optional) Install Xcode

Install Xcode from app store.
An apple ID is necessary to download Xcode.
One needs to start Xcode once to accept a license agreement.


## Install command line tools

``` bash
$ xcode-select --install
```


## Install Homebrew

[Homebrew][homebrew] is a package manager for Mac.

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

- Setup iTerm2

    - Apply iTerm2 theme

        - [Nord theme][nord]

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


- Install vscode

    - Install `Settings Sync`

      Access token and Gist id is in my Dropbox

    - Run the `Shell Command: Install 'code' command in PATH`



[homebrew]: http://brew.sh/
[nord]: https://github.com/arcticicestudio/nord-iterm2
