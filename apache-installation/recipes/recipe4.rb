#
# Cookbook:: apache-installation
# Recipe:: recipe4
#
# Copyright:: 2022, The Authors, All Rights Reserved.

package 'httpd' do
action:install
end

file '/var/www/html/index.html' do
content 'codes of all recipes apply simulteneously'
action :create
end

service 'httpd' do
action [:enable, :start]
end


%w(docker tree  unzip git nano) .each do |p|
package p do
action :install
end
end

