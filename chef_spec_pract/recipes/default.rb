#
# Cookbook:: chef_spec_pract
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

file '/tmp/explicit_action' do
    action :delete
  end
  
  file '/tmp/with_attributes' do
    user 'user'
    group 'group'
    backup false
    action :delete
  end
  
  file 'specifying the identity attribute' do
    path   '/tmp/identity_attribute'
   action :delete
  end
  