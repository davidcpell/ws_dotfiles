#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

directory node['dotfiles_dir'] do
  user      'david'
  group     'root'
  mode      '0774'
  recursive true
end

git 'dotfiles' do 
  repository  node['dotfiles']['repo']
  destination node['dotfiles']['destination']
  reference   'master'
  user        'david'
  group       'root'
  action      :sync
end

node['dotfiles']['linkable'].each do |source|
  link File.join(node['home'], ".#{source}") do 
    to File.join(node['dotfiles_dir'], source)
  end
end
