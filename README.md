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
   $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. Check any issues with the install

   ``` bash
   ## Modify PATH according to CPU architecture of your Mac
   $ export PATH="/opt/homebrew/bin:$PATH"
   $ brew doctor
   ```

## Setup with ansible

1. Install ansible

   ``` bash
   $ brew install ansible
   ```

2. Clone repository and set up Mac with ansible

   ``` bash
   $ git clone https://github.com/yusekiya/mac_setup.git ~/.provisioning
   $ cd ~/.provisioning
   $ ansible-playbook -vv localhost.yml
   ```


## Optional settings

### Change login shell

```shell
$ chsh -s $(brew --prefix)/bin/zsh
```

### Set up fzf

```shell
$ $(brew --prefix fzf)/install --key-bindings --completion --no-update-rc
```

### Set up package manager for zsh

Install sheldon with `cargo`:

1. Install [Rust][rust]
2. `cargo install sheldon`

### Set up zoxide

Add the following lines to `~/.zsh.site/defer-after-compinit.zsh`

```shell
if (( $+commands[zoxide] )); then
    eval "$(zoxide init --cmd c zsh)"
fi
```

### Set up iTerm2

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


### Install vscode

- Enable builtin `Settings Sync`

    Sign in with GitHub account

- Run the `Shell Command: Install 'code' command in PATH`



[homebrew]: http://brew.sh/
[nord]: https://github.com/arcticicestudio/nord-iterm2
[rust]: https://www.rust-lang.org/tools/install
