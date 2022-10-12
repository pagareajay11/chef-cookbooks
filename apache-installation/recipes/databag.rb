#
# Cookbook:: apache-installation
# Recipe:: databag
#
# Copyright:: 2022, The Authors, All Rights Reserved.

#users = ['iser1' ,'user2']
#node['users']['list'].each do |u|
#	user u
#end

#group 'devel' do
 # members node['users']['list']
#end

admins = data_bag('users')

# puts "#{admins}"
admins.each do |login|
  admin = data_bag_item('users', login)
  # puts "#{admin['uid']}"
  user(login) do
  #   uid   admin['uid']
  #   gid   admin['gid']
  #   shell admin['comment']
    comment admin['comment']
  #   home "/home/#{login}"
  #   file '/databags' do
    # content admin['uid']
  #   mode '0744'
  end
#   puts admin['uid']

# puts admin['uid']
 end
# end
groups 'devops' do
  members admins
 end
