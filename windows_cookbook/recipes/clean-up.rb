#
# Cookbook:: windows_cookbook
# Recipe:: clean-up
#
# Copyright:: 2022, The Authors, All Rights Reserved.

file 'c:\chef\cache\package\ajay.txt' do
    action :delete
end
