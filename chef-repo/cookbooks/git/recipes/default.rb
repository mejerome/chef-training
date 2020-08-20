#
# Cookbook:: git
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
directory '/var/website' do
  action :create
end

directory '/var/old-website' do
  action :absent
end
