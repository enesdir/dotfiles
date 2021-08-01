# codenuru's dotfiles

![codenuru's dotfiles](https://raw.githubusercontent.com/codenuru/dotfiles/master/media/iterm.png)


## Contents

What's in there?

- all my `brew` dependencies including: applications, fonts, etc. See [`Brewfile`](https://github.com/codenuru/dotfiles/blob/main/brew/Brewfile)
- all my `macOS` configuration. See [`macos`](https://github.com/codenuru/dotfiles/tree/main/macos/)
- all my `vscode` configuration. See `vscode/`

## Installation

We are using [`dotbot`](https://github.com/anishathalye/dotbot/)
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

## CLI

I am using default `iTerm` as terminal emulators.
I am using `fish` with [`oh-my-fish`](https://github.com/oh-my-fish/oh-my-fish)
as a main shell.
I also have a lot of tools to make my working experience better.

I mainly work with three stacks:

- `python`
- `node` + `yarn` + `react` + `typescript`

So, they are configured nice and smoothly.
You will have configured version managers, best practices, and useful tools.
And some productivity hacks!

## Apps

I am using `brew` to install all free apps for my mac.
I also sync apps from AppStore with `brew`,
so the resulting [`Brewfile`](https://github.com/codenuru/dotfiles/blob/master/brew/Brewfile) contains everything.

## Infrastructure

I try to cloud service everything.

## VS Code

I loved my `Visual Studio Code`. It is fast and beautiful.

Here's how my new `vscode` setup looks like:

![codenuru's vscode for Python](https://raw.githubusercontent.com/codenuru/dotfiles/master/media/vscode.png)

It is also fully [configured](https://docs.github.com/en/free-pro-team@latest/github/developing-online-with-codespaces/personalizing-codespaces-for-your-account) to be used with [Codespaces](https://github.com/features/codespaces).

Here's [a list of packages](https://github.com/codenuru/dotfiles/blob/main/packages/vscode-extensions.sh) I use:

- [`OneDark Pro`](https://github.com/Binaryify/OneDark-Pro) theme with modifications and `vscode-icons` icons
- `Elixir` syntax highlighting
- [`GitLens`](https://github.com/eamodio/vscode-gitlens) supercharge the `git` capabilities
- [`Python`](https://github.com/Microsoft/vscode-python) plugin
- `editorconfig` integration

## Local configuration

Some of the used tools requires local configuration. Such as `git` with username and email.

Here's the full list:

1. `~/.gitconfig_local` to store any user-specific data
2. `~/.shell_env_local` to store local shell config, like: usernames, passwords, tokens, `gpg` keys and so on

## License

[WTFPL](https://en.wikipedia.org/wiki/WTFPL): do the fuck you want. Enjoy!
