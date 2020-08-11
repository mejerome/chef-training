#
# Cookbook:: git
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'git'

package 'nano' do
  action :install
end

directory '/var/website' do
  action :create
end

directory '/var/old-website' do
  action :delete
end

file '/var/website/directions.txt' do
  content 'website goes here'
  action :create
end

file '/var/website/builder.txt' do
  content "#{node['builder']} built this."
  action :create
end

remote_file '/var/website/images.png' do
  source "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgQmQ0CYwU3cpFE6gEB82cp6TSIcBJSisax_HVvEfsgYHGBsO8kQ"
  action :create
end

git_chefkata 'chef_training_website' do
  kata_repo "#{node['kata_repo']}"
end
