
function update --description 'Keep everything up to date'

  echo "Starting daily update routine"

  if type -q omf
    echo \nUpdating omf and plugins\n
    omf update
  end

  # echo "Updating osx"
  # softwareupdate --install --all

  echo "Updating brew"
  brew update
  brew upgrade --display-times
  brew upgrade --cask
  brew cleanup
  brew update-reset
  brew doctor
  echo "Making sure brewfile is up-to-date"
  brew bundle check --verbose --file="$XDG_CONFIG_HOME/brew/Brewfile"

  echo "Generating external fish completions"
  fish_generate_completions

  echo "Updating fish completions"
  fish_update_completions

  # echo "Updating projects"
  # repos-update

  # for package in (npm -g outdated --parseable --depth=0 | cut -d: -f2)
  #   npm -g install "$package"
  # end
  if type -q npm
    echo \nUpdating node with nvm\n
    npm i -g npm
    npm -v > /dev/null
  end

  if type -q yarn
    echo \nUpdating global yarn packages\n
    yarn global upgrade
  end

  # if type -q rustup
  #   echo \nUpdating rust channels\n
  #   rustup update
  # end

  # if type -q cargo-install-update
  #   cargo install-update -a
  # end
  echo "Finished daily update routine"
end
