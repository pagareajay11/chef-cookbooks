#
# Cookbook:: apache-installation
# Recipe:: apache
#
# Copyright:: 2022, The Authors, All Rights Reserved.
package 'nginx' do
action :install
end

file '/var/www/html/index.html' do
content 'Welcome Ajey Pagare ! this recipe is executed through roles . Updated Now	'
action :create
end


service 'nginx' do
action [:enable, :start]
end
