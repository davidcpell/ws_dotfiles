describe directory('/home/david/code/dotfiles') do 
  it { should be_directory }
end

describe file('/home/david/.vimrc') do 
  it { should be_file }
end

describe file('/home/david/.tmux.conf') do 
  it { should be_file }
end

describe file('/home/david/.zshrc') do 
  it { should be_file }
end
