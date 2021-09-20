# codenuru's dotfiles

![codenuru's dotfiles](https://raw.githubusercontent.com/codenuru/dotfiles/master/media/iterm.png)

## Summary

What's in there?

- all my `brew` dependencies including: applications, fonts, etc. See [`Brewfile`](https://github.com/codenuru/dotfiles/blob/main/brew/Brewfile)
- all my `macOS` configuration. See [`macos`](https://github.com/codenuru/dotfiles/tree/main/macos/)
- all my `vscode` configuration. See `vscode/`

## Installation

These dotfiles use [`dotbot`](https://github.com/anishathalye/dotbot/) for installation.

### Dependencies

- git

### Ready for setup

to set things up. Steps:

1. Clone this repo

  ```bash
  git clone --recursive https://github.com/codenuru/dotfiles .dotfiles
  ```

2. `cd` into `dotfiles/` folder

  ```bash
  cd .dotfiles
  ```

### Option 1 - For installing a predefined profile

```bash
bash ./install-profile <profile> [<configs...>]
# See meta/profiles/ for available profiles
```

### Option 2 - For installing single configurations

```bash
bash ./install-standalone <configs...>
# See meta/configs/ for available configurations
```

3. Manual - Copy your private ssh key into the .ssh folder

4. Secure your ssh folder

```bash
bash -l './scripts/configure-ssh.sh'
```

5. oh-my-fish installation

```bash
bash -l './scripts/install-omf.sh'
```

The installation scripts are idempotent and can therefore be executed safely multiple times.

## Contents

I am using default `iTerm` as terminal emulators.
I am using `fish` with [`oh-my-fish`](https://github.com/oh-my-fish/oh-my-fish)
as a main shell.
I also have a lot of tools to make my working experience better.

I mainly work with two stacks:

- `node` + `yarn` + `react` + `typescript`
- `python`

So, they are configured nice and smoothly.
You will have configured version managers, best practices, and useful tools.
And some productivity hacks!

### Root (/)

- install-standalone or install-profile - Bootstrap installation

### Meta (/meta)

- configs folder - Configuration files for each program
- profiles folder - Summarize configs configurations in profiles

### Fish (fish/)

- config.fish - Global fish configuration (.fishrc)
- omf folder - List of `omf` plugins & themes
- completions/
  - repo.fish - Contains all repos as completions for the `repo` command
  - repodir.fish - Contains all repos as completions for the `repodir` command
- functions/
  - abbrex.fish - Utility for expanding abbreviations in fish-scripts
  - emptytrash.fish - Empties trash and clears system logs
  - fuck.fish - thefuck helper
  - forrepos.fish - Executes a passed command for all repos in `~/dev`
  - gtc.fish - git clone into `~/dev` with dir structure like `githosting/org/repo`
  - ls.fish - Calling ls with parameter --color=auto
  - repo.fish - Finds a repository in `~/dev` and jumps to it
  - repodir.fish - Finds a repository in `~/dev` and prints its path
  - update.fish - Installs OS X Software Updates, Homebrew, npm, and their installed packages
  - week.fish - Returns the current week number

### macOS Preferences (macos/)

- [`settings.sh`](https://github.com/codenuru/dotfiles/blob/master/macos/settings.sh)  - Executes a long list of commands pertaining to macOS Preferences

### Packages (packages/)

- [`npm-global.sh`](https://github.com/codenuru/dotfiles/blob/master/packages/npm-global.sh)         - Installs the npm global packages
- [`vscode-extension.sh`](https://github.com/codenuru/dotfiles/blob/master/packages/vscode-extension.sh)   - Installs the vscode extensions
- [`yarn-global.sh`](https://github.com/codenuru/dotfiles/blob/master/packages/yarn-global.sh)        - Installs the yarn global packages

### Helper Scripts (scripts/)

- [`configure-iterm.sh`](https://github.com/codenuru/dotfiles/blob/master/scripts/configure-iterm.sh)  - Fish iTerm integration
- [`configure-ssh.sh`](https://github.com/codenuru/dotfiles/blob/master/scripts/configure-ssh.sh) - Secure ssh folder after installation and copy your ssh key into the `~/.ssh` folder
- [`install-omf.sh`](https://github.com/codenuru/dotfiles/blob/master/scripts/install-omf.sh) - Install omf and omf plugins

### Apps(brew/)

I am using `brew` to install all free apps for my mac.
I also sync apps from AppStore with `brew`,
so the resulting [`Brewfile`](https://github.com/codenuru/dotfiles/blob/master/brew/Brewfile) contains everything.

### VS Code(vscode/)

I loved my `Visual Studio Code`. It is fast and beautiful.

Here's how my new `vscode` setup looks like:

![codenuru's vscode for Python](https://raw.githubusercontent.com/codenuru/dotfiles/master/media/vscode.png)

Here's [a list of packages](https://github.com/codenuru/dotfiles/blob/main/packages/vscode-extensions.sh)

### Local configuration(dotfiles/)

- gitignore_global - Contains global gitignores, such as OS-specific files and
several compiled files
- gitconfig - Sets several global Git variables

Some of the used tools requires local configuration. Such as `git` with username and email.

Here's the full list:

1. `~/.gitconfig_local` to store any user-specific data
2. `~/.shell_env_local` to store local shell config, like: usernames, passwords, tokens, `gpg` keys and so on

## Inspiration (thanks!)

- [anishathalya](https://github.com/anishathalye/dotbot) for `dotbot`
- [sobolevn](https://github.com/sobolevn/dotfiles) and [vbrandl](https://github.com/vbrandl/dotfiles) for their repository structure
- [rkalis](https://github.com/rkalis/dotfiles) for his `macos` and fish configuration files

## License

[WTFPL](https://en.wikipedia.org/wiki/WTFPL): do the fuck you want. Enjoy!
