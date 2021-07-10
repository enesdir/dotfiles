#!/usr/bin/env bash

# Title        oh-my-fish-install.sh
# Description  Install/upgrade Homebrew packages and casks
#==============================================================================

_oh_my_fish_command_exists() {
  command -v "$@" >/dev/null 2>&1
}

_oh_my_fish_error() {
  echo "Error: $@" >&2
}

change_shell() {
  echo -e "Changing shell to fish"
 # If this user's login shell is already "fish", do not attempt to switch.
  if [[ "$(basename "$SHELL")" = "fish" ]]; then
    return
  fi

  # If this platform doesn't provide a "chsh" command, bail out.
  if ! _oh_my_fish_command_exists chsh; then
    cat <<-EOF
			I can't change your shell automatically because this system does not have chsh.
			Please manually change your default shell to fish
		EOF
    return
  fi

  echo "Time to change your default shell to fish:"

  # Test for the right location of the "shells" file
  if [[ -f /etc/shells ]]; then
    shells_file=/etc/shells
  elif [[ -f /usr/share/defaults/etc/shells ]]; then # Solus OS
    shells_file=/usr/share/defaults/etc/shells
  else
    _oh_my_fish_error "could not find /etc/shells file. Change your default shell manually."
    return
  fi

  # Get the path to the right fish binary
  # 1. Use the most preceding one based on $PATH, then check that it's in the shells file
  # 2. If that fails, get a fish path from the shells file, then check it actually exists
  if ! fish=$(which fish) || ! grep -qx "$fish" "$shells_file"; then
    if ! fish=$(grep '^/.*/fish$' "$shells_file" | tail -1) || [[ ! -f "$fish" ]]; then
      _oh_my_fish_error "no fish binary found or not present in '$shells_file'"
      _oh_my_fish_error "change your default shell manually."
      return
    fi
  fi

  # Actually change the default shell to fish
  if ! chsh -s "$fish"; then
    _oh_my_fish_error "chsh command unsuccessful. Change your default shell manually."
  else
    export SHELL="$fish"
    echo "Shell successfully changed to '$fish'."
  fi

exec fish -l
}

# Install oh-my-fish if needed
# See: https://github.com/oh-my-fish/oh-my-fish#installation
install_omf() {
  echo "Install oh-my-fish "
  if ! type_exists "omf"; then
    echo "Installing oh-my-fish"
    curl -L https://get.oh-my.fish | fish
  else
    echo "Done. oh-my-fish already installed"
  fi
}

main() {
  change_shell
  install_omf
}

main "$@"
