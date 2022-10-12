#
# Cookbook:: apache-installation
# Recipe:: recipe1
#
# Copyright:: 2022, The Authors, All Rights Reserved.
package 'nginx' do
action :install
end

file '/var/www/html/index.html' do
content 'Welcome Ajey Pagare! Nginx Installed successfully'
action :create
end


service 'nginx' do
action [:enable, :start]
end
