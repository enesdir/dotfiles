
function update

  if type -q omf
    echo \nUpdating omf and plugins\n
    omf update
  end

  if type -q brew
    echo \nUpdating brew packages\n
    brew update
    brew upgrade --display-times
    brew cleanup
  end

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

end
