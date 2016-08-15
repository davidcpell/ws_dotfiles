home = '/home/david'

default['home'] = home

default['dotfiles_dir'] = File.join(home, 'code', 'dotfiles')

default['dotfiles'].tap do |dotfiles|
  dotfiles['destination'] = File.join(home, 'code', 'dotfiles')
  dotfiles['repo']        = 'https://github.com/davidcpell/dotfiles.git'
  dotfiles['linkable']    = ['zshrc', 'vimrc', 'tmux.conf']
end

