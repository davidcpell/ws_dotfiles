#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

git 'dotfiles' do 
  repository  node['dotfiles']['source']
  destination node['dotfiles']['install_path']
  reference   'master'
  user        'david'
  group       'root'
  action      :sync
end

node['dotfiles']['linkable'].each do |orig|
  link File.join('/home', 'david', ".#{orig}") do 
    to File.join(node['dotfiles']['install_path'], orig)
  end
end
