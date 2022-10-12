#
# Cookbook:: env_pract
# Recipe:: install_apache
#
# Copyright:: 2022, The Authors, All Rights Reserved.

env = node.chef_environment
p_name  = node['package_name']['a']
puts "#{env}"
puts "#{p_name}"
package 'apache2' do
    action :install
end

# template '/home/ajay/' do
#     source 'sample'
#     owner 'root'
#     group 'root'
#     mode '0755'
#     action :create
# end
service 'apache2' do
    supports :restart => true
    action [:enable]
end

