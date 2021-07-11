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
- `node` + `react` + `typescript`

So, they are configured nice and smoothly.
You will have configured version managers, best practices, and useful tools.
And some productivity hacks!

I also have several other languages installed.
But I don't use them on a daily basis.

## Apps

I am using `brew` to install all free apps for my mac.
I also sync apps from AppStore with `brew`,
so the resulting [`Brewfile`](https://github.com/codenuru/dotfiles/blob/master/Brewfile) contains everything.

## Infrastructure

I try to containerize everything.
So `docker` is my main development and deployment tool.
You can install it from its [official site](https://docs.docker.com/docker-for-mac/) (`brew` [version](https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker.rb) is also an option).

I prefer to use `edge` version of `docker`.
So, you will have to download it manually.

However, I also use several databases and other services locally:

- `postgresql` (with `postgis`)
- `redis`

I use this setup for small and simple projects.
Other stuff is always dockerized.

## VS Code

I loved my `Sublime`. It was fast and beautiful.
But I have switched to `vscode`.
The main reason is that `Sublime` is almost unmaintained.
Packages are also abandoned.

So, I have switched to `vscode`.
It solved almost all issues I had with `Sublime`.
Here's how my new `vscode` setup looks like:

![codenuru's vscode for Python](https://raw.githubusercontent.com/codenuru/dotfiles/master/media/vscode.png)

It is also fully [configured](https://docs.github.com/en/free-pro-team@latest/github/developing-online-with-codespaces/personalizing-codespaces-for-your-account) to be used with [Codespaces](https://github.com/features/codespaces).

Here's [a list of packages](https://github.com/codenuru/dotfiles/blob/main/packages/vscode-extensions.sh) I use:

- [`ayu`](https://github.com/ayu-theme/vscode-ayu) theme with modifications and `A File Icon` icons
- `Elixir` syntax highlighting
- [`Vetur`](https://github.com/vuejs/vetur) for `Vue` features
- [`Python`](https://github.com/Microsoft/vscode-python) plugin
- [`Rust`](https://github.com/rust-lang/rls-vscode) plugin
- `editorconfig` integration

## Local configuration

Some of the used tools requires local configuration. Such as `git` with username and email.

Here's the full list:

1. `~/.gitconfig_local` to store any user-specific data
2. `~/.shell_env_local` to store local shell config, like: usernames, passwords, tokens, `gpg` keys and so on

## License

[WTFPL](https://en.wikipedia.org/wiki/WTFPL): do the fuck you want. Enjoy!
