#
# Cookbook:: test-cookbook
# Recipe:: recipe3
#
# Copyright:: 2022, The Authors, All Rights Reserved.
package 'nginx' do
action :install
end

file '/var/www/html/index.html' do
content 'Welcome Ajay Pagare'
action :create
end


service 'httpd' do
action [:enable, :start]
end
