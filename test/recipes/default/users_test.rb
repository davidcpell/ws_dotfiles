describe user('david') do 
  it { should exist }
end

describe user('david') do
  its(:home) { should eq '/home/david' }
end

describe user('david') do
  its(:shell) { should eq '/bin/zsh' }
end
