#
# Cookbook:: databag_pract
# Recipe:: create-user
#
# Copyright:: 2022, The Authors, All Rights Reserved.
#


admins = data_bag('users')
#password = data_bag('admins','admins_details','s1')
# a =data_bag('admins')
# puts "#{a}"
#secret file
#password = data_bag('admins' ,'admins_details',IO.Read())
#puts "#{password}"


admins.each do |login|
  admin = data_bag_item('users', login)
  user(login) do
    comment admin['comment']
  end
 end
group 'devops' do
  members admins
 end


 
