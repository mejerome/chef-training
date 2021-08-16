#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
apt_update 'Update the apt cache daily' do
    frequency 86_400
    action :periodic
end

package 'apache2' do
    action: install
end

file '/var/www/html/index.html' do
    content '<html><h1>This is a placeholder for the home page.<h1></html>'
    mode '0755'
    owner 'root'
    group 'root'
end

service 'apache' do
    action [ :enable, :start ]
    retries 3
end