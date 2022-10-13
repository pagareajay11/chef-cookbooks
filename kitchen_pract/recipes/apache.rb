#
# Cookbook:: kitchen_pract
# Recipe:: apache
#
# Copyright:: 2022, The Authors, All Rights Reserved.


# apt_package 'update' do
#     action :install
# end

package 'git' 

# package 'apache2'
apt_update


package 'Install Apache' do
      package_name 'apache2'
      version '2.4.41-4ubuntu3.12'
  end
  

file '/var/www/html/index.html' do
    content 'hello ! apache2 is installed'
    action :create
end

