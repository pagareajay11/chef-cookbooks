#
# Cookbook:: databag_pract
# Recipe:: create-group
#
# Copyright:: 2022, The Authors, All Rights Reserved.



group 'devops' do
    action :create
    append true
end
