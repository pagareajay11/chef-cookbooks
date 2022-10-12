#
# Cookbook:: windows_cookbook
# Recipe:: install_googlechrome
#
# Copyright:: 2022, The Authors, All Rights Reserved.

#installing google chrome on windows
# chrome64 = node['kernel']['machine'] == 'x86_64' && !node['chrome']['32bit_only']
# windows_package 'Google Chrome' do
#   source chrome64 ? node['chrome']['msi_64'] : node['chrome']['msi']
#   action :nothing
#   only_if { chrome_windows_version.nil? }
# end.run_action(:install)

windows_package 'install google chrome' do
        action :install
        source  node['chrome']['msi']
       
end
