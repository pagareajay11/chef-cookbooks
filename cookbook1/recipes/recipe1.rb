#
# Cookbook:: cookbook1
# Recipe:: recipe1
#
# Copyright:: 2022, The Authors, All Rights Reserved.

apache_package_name  =  node['nginx']['package_name_for_apache']
package apache_package_name do
action :install
end

file '/var/www/html/index.html' do
content 'Welcome to Technical Guftgu'
action :create
end


service apache_package_name  do
action [:enable, :start]
end
