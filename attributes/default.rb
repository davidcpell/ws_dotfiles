default['dotfiles'].tap do |dotfiles|
  dotfiles['install_path'] = File.join('/home', 'david', 'code', 'dotfiles')
  dotfiles['source']       = 'https://github.com/davidcpell/dotfiles.git'
  dotfiles['linkable']     = %w(zshrc vimrc tmux.conf)
end

