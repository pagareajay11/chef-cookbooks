#
# Cookbook:: cookbook1
# Recipe:: recipe2
#
# Copyright:: 2022, The Authors, All Rights Reserved.
package 'tree' do
action :install
end

file '/myfile2' do
content 'This is Ajay Pagare'
action :create
owner 'root'
group 'root'
end
